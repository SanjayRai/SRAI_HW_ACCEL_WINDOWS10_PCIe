/* Sanjay Rai - CPP Class wrapper for PCIe xDMA driver */ 
#ifndef FPGA_xDMA_UTILS_H_
#define  FPGA_xDMA_UTILS_H_

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <strsafe.h>

#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>
#include <WinIoCtl.h>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")
#define MAX_XFER_SZ 1024*1024*8ULL
using namespace std;

class fpga_mmio_winx {

    private:

        HANDLE device_h2c;
        HANDLE device_c2h;
        HANDLE device_user;
        char device_base_path[MAX_PATH + 1] = "";
        char device_path_h2c[MAX_PATH + 1] = "";
        char device_path_c2h[MAX_PATH + 1] = "";
        char device_path_user[MAX_PATH + 1] = "";
        unsigned long Number_of_bytes_written;

        int get_devices(GUID guid, char* devpath, size_t len_devpath) {

            HDEVINFO device_info = SetupDiGetClassDevs((LPGUID)&guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
            if (device_info == INVALID_HANDLE_VALUE) {
                fprintf(stderr, "GetDevices INVALID_HANDLE_VALUE\n");
                exit(-1);
            }

            SP_DEVICE_INTERFACE_DATA device_interface;
            device_interface.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);

            // enumerate through devices
            DWORD index;
            for (index = 0; SetupDiEnumDeviceInterfaces(device_info, NULL, &guid, index, &device_interface); ++index) {

                // get required buffer size
                ULONG detailLength = 0;
                if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, NULL, 0, &detailLength, NULL) && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
                    fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get length failed\n");
                    break;
                }

                // allocate space for device interface detail
                PSP_DEVICE_INTERFACE_DETAIL_DATA dev_detail = (PSP_DEVICE_INTERFACE_DETAIL_DATA)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, detailLength);
                if (!dev_detail) {
                    fprintf(stderr, "HeapAlloc failed\n");
                    break;
                }
                dev_detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);

                // get device interface detail
                if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, dev_detail, detailLength, NULL, NULL)) {
                    fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get detail failed\n");
                    HeapFree(GetProcessHeap(), 0, dev_detail);
                    break;
                }

                StringCchCopy(devpath, len_devpath, dev_detail->DevicePath);
                HeapFree(GetProcessHeap(), 0, dev_detail);
            }

            SetupDiDestroyDeviceInfoList(device_info);

            return index;
        }


    public :
		fpga_mmio_winx (void) {}



        bool initialize_xDMA () {
            bool Exit_f_condition = false;
            DWORD num_devices = get_devices(GUID_DEVINTERFACE_XDMA, device_base_path, sizeof(device_base_path));
            cout << "Devices found: " << num_devices << endl;
            if (num_devices < 1) {
                Exit_f_condition = true;
            } else {
                strcpy_s(device_path_h2c, sizeof device_path_h2c, device_base_path);
                strcat_s(device_path_h2c, sizeof device_path_h2c, "\\h2c_0");
                device_h2c = CreateFile(device_path_h2c, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
                if (device_h2c == INVALID_HANDLE_VALUE) {
                    fprintf(stderr, "Error opening device, win32 error code: %ld\n", GetLastError());
                    Exit_f_condition = true;
                }

                strcpy_s(device_path_c2h, sizeof device_path_c2h, device_base_path);
                strcat_s(device_path_c2h, sizeof device_path_c2h, "\\c2h_0");
                device_c2h = CreateFile(device_path_c2h, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
                if (device_c2h == INVALID_HANDLE_VALUE) {
                    fprintf(stderr, "Error opening device, win32 error code: %ld\n", GetLastError());
                    Exit_f_condition = true;
                }

                strcpy_s(device_path_user, sizeof device_path_user, device_base_path);
                strcat_s(device_path_user, sizeof device_path_user, "\\user");
                device_user = CreateFile(device_path_user, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
                if (device_user == INVALID_HANDLE_VALUE) {
                    fprintf(stderr, "Error opening device, win32 error code: %ld\n", GetLastError());
                    Exit_f_condition = true;
                }
            }   
            
            return Exit_f_condition;
        }

        bool fpga_xDMA_write64(uint64_t AXI_addr, char *buffer, uint32_t size ) {
            int64_t current_xfer_size;
            bool Exit_f_condition = false;
            LARGE_INTEGER AXI_ADDRESS;
            // set file pointer to offset of target address within PCIe BAR
            current_xfer_size = size;
            while (current_xfer_size > 0) {
                if ( current_xfer_size > MAX_XFER_SZ) {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_h2c, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!WriteFile(device_h2c, buffer, (uint32_t)MAX_XFER_SZ, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "WriteFile to device_h2c failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    AXI_addr += MAX_XFER_SZ;
                    buffer += MAX_XFER_SZ; 
                    current_xfer_size -= MAX_XFER_SZ;
                } else {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_h2c, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!WriteFile(device_h2c, buffer, (uint32_t)current_xfer_size, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "WriteFile to device_h2c failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    current_xfer_size = 0;
                }
            }
            return Exit_f_condition;
        }

        bool fpga_xDMA_read64(uint64_t AXI_addr, char *buffer, uint32_t size ) {
            int64_t current_xfer_size;
            bool Exit_f_condition = false;
            LARGE_INTEGER AXI_ADDRESS;
            current_xfer_size = size;
            while (current_xfer_size > 0) {
                if ( current_xfer_size > MAX_XFER_SZ) {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_c2h, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!ReadFile(device_c2h, buffer, (uint32_t)MAX_XFER_SZ, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "ReadFile to device_c2h failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    AXI_addr += MAX_XFER_SZ;
                    buffer += MAX_XFER_SZ; 
                    current_xfer_size -= MAX_XFER_SZ;
                } else  {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_c2h, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!ReadFile(device_c2h, buffer, (uint32_t)current_xfer_size, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "ReadFile to device_c2h failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    current_xfer_size =  0;
                }
            }
            return Exit_f_condition;
        }

        bool fpga_poke_N(uint32_t AXI_addr, char *buffer, uint32_t size ) {
            int64_t current_xfer_size;
            bool Exit_f_condition = false;
            LARGE_INTEGER AXI_ADDRESS;
            // set file pointer to offset of target address within PCIe BAR
            current_xfer_size = size;
            while (current_xfer_size > 0) {
                if ( current_xfer_size > MAX_XFER_SZ) {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_user, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!WriteFile(device_user, buffer, (uint32_t)MAX_XFER_SZ, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "WriteFile to device_user failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    AXI_addr += MAX_XFER_SZ;
                    buffer += MAX_XFER_SZ; 
                    current_xfer_size -= MAX_XFER_SZ;
                } else {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_user, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!WriteFile(device_user, buffer, (uint32_t)current_xfer_size, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "WriteFile to device_user failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    current_xfer_size = 0;
                }
            }
            return Exit_f_condition;
        }

        bool fpga_poke(uint32_t AXI_addr, uint32_t data_val ) {
            bool Exit_f_condition = false;
            uint32_t tmp_data_val;
            LARGE_INTEGER AXI_ADDRESS;
            // set file pointer to offset of target address within PCIe BAR
            AXI_ADDRESS.QuadPart = AXI_addr;
            tmp_data_val = data_val;
            if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_user, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                Exit_f_condition = true;
                } else if (!WriteFile(device_user, &tmp_data_val, (uint32_t)4, &Number_of_bytes_written, NULL)) {
                    fprintf(stderr, "WriteFile to device_user failed with Win32 error code: %d\n", GetLastError());
                    Exit_f_condition = true;
                }
            return Exit_f_condition;
        }

        bool fpga_peek_N(uint32_t AXI_addr, char *buffer, uint32_t size ) {
            int64_t current_xfer_size;
            bool Exit_f_condition = false;
            LARGE_INTEGER AXI_ADDRESS;
            current_xfer_size = size;
            while (current_xfer_size > 0) {
                if ( current_xfer_size > MAX_XFER_SZ) {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_user, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!ReadFile(device_user, buffer, (uint32_t)MAX_XFER_SZ, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "ReadFile to device_user failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    AXI_addr += MAX_XFER_SZ;
                    buffer += MAX_XFER_SZ; 
                    current_xfer_size -= MAX_XFER_SZ;
                } else  {
                    AXI_ADDRESS.QuadPart = AXI_addr;
                    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_user, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                        Exit_f_condition = true;
                    } else if (!ReadFile(device_user, buffer, (uint32_t)current_xfer_size, &Number_of_bytes_written, NULL)) {
                        fprintf(stderr, "ReadFile to device_user failed with Win32 error code: %d\n", GetLastError());
                        Exit_f_condition = true;
                    }
                    current_xfer_size =  0;
                }
            }
            return Exit_f_condition;
        }

        uint32_t fpga_peek(uint32_t AXI_addr) {
            uint32_t tmp_data_val;
            LARGE_INTEGER AXI_ADDRESS;
            // set file pointer to offset of target address within PCIe BAR
            AXI_ADDRESS.QuadPart = AXI_addr;
            if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device_user, AXI_ADDRESS, NULL, FILE_BEGIN)) {
                fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
                } else if (!ReadFile(device_user, &tmp_data_val, (uint32_t)4, &Number_of_bytes_written, NULL)) {
                    fprintf(stderr, "ReadFile to device_user failed with Win32 error code: %d\n", GetLastError());
                }
            return tmp_data_val;
        }


        void fpga_xDMA_clean() {
            CloseHandle(device_h2c);
            CloseHandle(device_c2h);
            CloseHandle(device_user);
        }

};
#endif
