/* Sanjay Rai - Test routing to access PCIe via  dev.mem mmap  */
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <stdint.h>
#include <fcntl.h>
#include <errno.h>
#include <time.h>
#include <inttypes.h>
#include <fstream>
#include <string>
#include <chrono>
#include <cmath>
#include "pcie_memio_winx.h" 
#include "srai_accel_utils.h" 

using namespace std;

bool fpga_PCIE_BANDWIDTH_test64 (fpga_mmio_winx *my_fpga_xDMA_ptr, uint64_t AXI_ADDRESS,  char *A_IN, char *Y_OUT, uint32_t xfer_size) {
    bool Exit_f_condition = false;
    //uint32_t xfer_size = 1024*1024
    //uint32_t *A_IN = new uint32_t [xfer_size];
    cout << "Start xDMA Throughput testing ..." << endl;
    //memset (A_IN, 0x0, (1024*1024));
    Exit_f_condition = xDMA_througput_h2c64 (my_fpga_xDMA_ptr, AXI_ADDRESS, A_IN, xfer_size);
    //cout << "Waiting for input\n";
    //cin >> DBG__SRAI_tempvar_1; 
    Exit_f_condition = xDMA_througput_c2h64 (my_fpga_xDMA_ptr, AXI_ADDRESS, Y_OUT, xfer_size);
    //cout << "Waiting for input\n";
    //cin >> DBG__SRAI_tempvar_1; 
    cout << "End xDMA Throughput testing " << endl;
    //delete [] A_IN;
    return Exit_f_condition;
}

void fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM (fpga_mmio_winx *fpga_AXI_Lite_ptr) {

    cout << "Testing Axi_Lite ScratchPad BRAM\n";
    uint32_t tmp_dbg_val[2048];
    for (int idx = 0; idx < 2048; idx++) {
        //tmp_dbg_val[idx]  = (uint32_t)(rand() % 0xffffffff); 
        tmp_dbg_val[idx]  = (uint32_t)(idx);
        //fpga_AXI_Lite_ptr->fpga_poke((AXI_LITE_SCRATCH_PAD_BRAM + (idx*4)), tmp_dbg_val[idx]);
    }
    fpga_AXI_Lite_ptr->fpga_poke_N(AXI_LITE_SCRATCH_PAD_BRAM, (char *)&tmp_dbg_val[0], (2048*4));

    uint32_t tmp_dbg_val_ver[2048];
    fpga_AXI_Lite_ptr->fpga_peek_N(AXI_LITE_SCRATCH_PAD_BRAM, (char *)&tmp_dbg_val_ver[0], (2048*4));
    for (int idx = 0; idx < 2048; idx++) {
        //tmp_dbg= fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SCRATCH_PAD_BRAM + (idx*4));
        if (tmp_dbg_val_ver[idx] != tmp_dbg_val[idx]) {
            printf("Error !!! Axi_lite Test failed @ Index = %d :: Expected %x but got %x\n", idx, tmp_dbg_val[idx], tmp_dbg_val_ver[idx]);
        }
    }

    cout << "Done Testing Axi_Lite ScratchPad BRAM\n";

}

void  fpga_read_temprature (fpga_mmio_winx *fpga_AXI_Lite_ptr, SysMon_temp_struct *sys_temp, int average_num) {
        double temprature_v = 0.0;
        for (int i = 0 ; i < average_num; i++) {
            temprature_v += ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_Temptature_register))*509.3140064/(65536.0))-280.23087870;
        }
        sys_temp->current_temp = (temprature_v/(double)average_num); 
        sys_temp->maximum_temp = ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_MAX_Temptature_register))*507.5921310/(65536.0))-279.42657680;
        sys_temp->minimum_temp = ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_MIN_Temptature_register))*509.3140064/(65536.0))-280.23087870;

        //sys_temp->maximum_temp = ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_MAX_Temptature_register))*509.3140064/(65536.0))-280.23087870;
        //sys_temp->minimum_temp = ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_MIN_Temptature_register))*509.3140064/(65536.0))-280.23087870;
        //temprature_v = ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_Temptature_register))*507.5921310/(65536.0))-279.42657680;
}



void fpga_PROGRAM_NORTH_PR (fpga_mmio_winx *fpga_AXI_Lite_ptr, string PR_binFile_name) {
    cout << "Partial binfile name = " << PR_binFile_name << endl;

    //cout << "SRAI_DBG isolate val = " << (ISOLATE_NORTH_PR) << endl;
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_GPIO_BASE, ISOLATE_NORTH_PR); 
    //
    ICAP_prog_PR_binfile (fpga_AXI_Lite_ptr, PR_binFile_name);
    //fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM (fpga_AXI_Lite_ptr);
    //
    //cout << "SRAI_DBG Deisolate val = " << (DEISOLATE_NORTH_PR) << endl;
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_GPIO_BASE, DEISOLATE_NORTH_PR); 
}


bool fpga_xfer_data_to_card64(fpga_mmio_winx *my_fpga_xDMA_ptr, uint64_t AXI_ADDRESS, char *data_buf_ptr, uint32_t XFER_SIZE) {

    int itn_count = 0;
    bool Exit_f_condition = false; 
    volatile uint32_t CONTROL_REG;
    CONTROL_REG = (my_fpga_xDMA_ptr->fpga_peek(PR_HLS_NORTH_CONTROL_REG));
    while ( (CONTROL_REG & 0x04) != 0x4) {
	CONTROL_REG = (my_fpga_xDMA_ptr->fpga_peek(PR_HLS_NORTH_CONTROL_REG));
        itn_count++;
        if (itn_count > 10000000) {
            cout << "HLS Execution Error  : HLS PR North Not ready Timeout !\n";
            break;
	}
}
/* Initialize DDR4 Memory with Input Arguments*/
    //cout <<  "SRAI_DBG XFER_SIZE = " << XFER_SIZE << endl;
    //cout <<  "SRAI_DBG DATA_PTR = " <<  (uint64_t)data_buf_ptr << endl;
    Exit_f_condition = my_fpga_xDMA_ptr->fpga_xDMA_write64((AXI_ADDRESS), (char *)(data_buf_ptr), XFER_SIZE);
    return Exit_f_condition;
}

void  fpga_run_NORTH_PR(fpga_mmio_winx *fpga_AXI_Lite_ptr, uint32_t AXI_ADDRESS_in0, uint32_t AXI_ADDRESS_RESULTS, uint32_t NUM_OF_DATA_SETS) {

/* Write to PR_HLS Address offset registers to set the location in Memory where Input Data and Output results are stored */
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_IN0_ADDR_OFFSET, (AXI_ADDRESS_in0 )); 
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_OUT0_ADDR_OFFSET, (AXI_ADDRESS_RESULTS)); 
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_NUMBER_OF_DATA_SETS, NUM_OF_DATA_SETS); 
/* Write to PR_HLS Control register to set Start bit HLS_PR module in motion */ 
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_CONTROL_REG, 0x00000011); 
}

void  fpga_run_NORTH_PR64(fpga_mmio_winx *fpga_AXI_Lite_ptr, uint64_t AXI_ADDRESS_in0, uint64_t AXI_ADDRESS_RESULTS, uint32_t NUM_OF_DATA_SETS) {

/* Write to PR_HLS Address offset registers to set the location in Memory where Input Data and Output results are stored */
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_IN0_ADDR_OFFSET, (uint32_t)(0x00000000FFFFFFFFULL & AXI_ADDRESS_in0 )); 
    fpga_AXI_Lite_ptr->fpga_poke((PR_HLS_NORTH_IN0_ADDR_OFFSET+4), (uint32_t)((0xFFFFFFFF00000000ULL & AXI_ADDRESS_in0) >> 32)); 
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_OUT0_ADDR_OFFSET, (uint32_t)(0x00000000FFFFFFFFULL & AXI_ADDRESS_RESULTS )); 
    fpga_AXI_Lite_ptr->fpga_poke((PR_HLS_NORTH_OUT0_ADDR_OFFSET+4), (uint32_t)((0xFFFFFFFF00000000ULL & AXI_ADDRESS_RESULTS) >> 32)); 
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_NUMBER_OF_DATA_SETS, NUM_OF_DATA_SETS); 
/* Write to PR_HLS Control register to set Start bit HLS_PR module in motion */ 
    fpga_AXI_Lite_ptr->fpga_poke(PR_HLS_NORTH_CONTROL_REG, 0x00000011); 
}

int  fpga_check_compute_done_NORTH_PR (fpga_mmio_winx *fpga_AXI_Lite_ptr) {
/* Read the PR_HLS Control register to poll the DOne bit (bit 1) */ 
    int itn_count = 0;
    uint32_t volatile CONTROL_REG = 0;
    //CONTROL_REG = (fpga_AXI_Lite_ptr->fpga_peek(PR_HLS_NORTH_CONTROL_REG));
    while ( (CONTROL_REG & 0x02) != 0x2) {
	CONTROL_REG = fpga_AXI_Lite_ptr->fpga_peek(PR_HLS_NORTH_CONTROL_REG);
        itn_count++;
        if (itn_count > 10000000) {
            cout << "HLS Execution Error :: HLS_PR Module North Done timeout __SRAI !\n";
            break;
        }
    }
    return itn_count;
}


bool fpga_xfer_data_from_card64(fpga_mmio_winx *my_fpga_xDMA_ptr, uint64_t AXI_ADDRESS_RESULTS, char *data_buf_ptr, uint32_t XFER_SIZE) {
/* Read the PR_HLS Control register to poll the DOne bit (bit 1) */ 
    bool Exit_f_condition = false; 
    /* Read Results from DDR4 output (results) area */
    Exit_f_condition = my_fpga_xDMA_ptr->fpga_xDMA_read64((AXI_ADDRESS_RESULTS), (char *)(data_buf_ptr), XFER_SIZE);
    return Exit_f_condition;

}

void ICAP_prog_PR_binfile (fpga_mmio_winx *fpga_AXI_Lite_ptr, string PR_binFile_name) {

    volatile uint32_t ret_data = 0;
    uint32_t itn_count = 0;
    uint32_t byte_swapped;
    fstream fpga_bin_file;
    long long file_size;
    char *bitStream_buffer;
    uint32_t *bitstream_ptr;

/* Program Partial Bit file */
    fpga_bin_file.open(PR_binFile_name, ios::in | ios::binary);
    fpga_bin_file.seekg(0, fpga_bin_file.end);
    file_size = fpga_bin_file.tellg();
    fpga_bin_file.seekg(0, fpga_bin_file.beg);
    cout << "PR Bitfile size =  " << file_size << " Bytes \n";
    bitStream_buffer = new char [file_size];
    bitstream_ptr = (uint32_t *)bitStream_buffer;
    fpga_bin_file.read(bitStream_buffer, file_size);
    fpga_bin_file.close();


    // Reset the ICAP
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0xC); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x0); 
    // Check if the ICAP is ready
    //ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_STATUS_REG); 
    //printf (" Status Reg = %x\n", ret_data);
    while (ret_data != 0x5) {
        ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_STATUS_REG); 
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "HLS Execution Error :: ICAP Status register indicates not ready!\n";
            break;
        }
    }

    ret_data = 0;
    // ICAP Data File processing
    for (int i = 0 ; i < (file_size/4); i++) {
        byte_swapped = ((*bitstream_ptr>>24)&0x000000ff) | \
                       ((*bitstream_ptr>>8) &0x0000ff00) | \
                       ((*bitstream_ptr<<8) &0x00ff0000) | \
                       ((*bitstream_ptr<<24)&0xff000000);
        bitstream_ptr++;
    
        //cout << *bitstream_ptr << " :  Writing :  " << hex << byte_swapped << endl;
        fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, byte_swapped); 
        if (((i+1) % 60) == 0) {
            // Write to the COntrol register to drain the Data FIFO every 60 or writes 
            //ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_WR_FIFO_VACANCY_REG); 
            fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x1); 
            itn_count = 0;
            // Wait till Fifo is drained
            while (ret_data != 0x3F) {
                ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_WR_FIFO_VACANCY_REG); 
                itn_count++; 
                if (itn_count > 10000000) {
                    cout << "HLS Execution Error : ICAP FIFO hasn't drained!\n";
                    break;
                }
            }
        }
    }
    // Final ICAP Fifo Flush
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x1); 

   delete [] bitStream_buffer;
}

bool xDMA_througput_h2c64 (fpga_mmio_winx *my_fpga_xDMA_ptr, uint64_t AXI_ADDRESS,  char *data_buffer, uint32_t xfer_size) {
    bool Exit_f_condition = false;
    auto start_t = chrono::high_resolution_clock::now();
    Exit_f_condition = my_fpga_xDMA_ptr->fpga_xDMA_write64(AXI_ADDRESS, (char *)data_buffer, xfer_size);
    auto stop_t = chrono::high_resolution_clock::now();
    chrono::duration<double> elapsed_hi_res = stop_t - start_t ;
    double high_res_elapsed_time = elapsed_hi_res.count();
    cout << "xDMA H2C Throughput =  " <<  (xfer_size/high_res_elapsed_time) << " Bytes/s\n";
   return Exit_f_condition;
}
bool xDMA_througput_c2h64 (fpga_mmio_winx *my_fpga_xDMA_ptr, uint64_t AXI_ADDRESS, char *data_buffer, uint32_t xfer_size) {
    bool Exit_f_condition = false;
    auto start_t = chrono::high_resolution_clock::now();
    Exit_f_condition = my_fpga_xDMA_ptr->fpga_xDMA_read64(AXI_ADDRESS, (char *)data_buffer, xfer_size);
    auto stop_t = chrono::high_resolution_clock::now();
    chrono::duration<double> elapsed_hi_res = stop_t - start_t ;
    double high_res_elapsed_time = elapsed_hi_res.count();
    cout << "xDMA C2H Throughput =  " <<  (xfer_size/high_res_elapsed_time) << " Bytes/s\n";
   return Exit_f_condition;
}

void fpga_PROGRAM_PR_CLOCK (fpga_mmio_winx *fpga_AXI_Lite_ptr, float PR_Frequency) {
    float MMCM_OUTPUT_DIV;
    float MMCM_OUTPUT_DIV_INT;
    float  MMCM_OUTPUT_DIV_FRAC;
    unsigned short  MMCM_OUTPUT_DIV_INT_REG;
    unsigned short  MMCM_OUTPUT_DIV_FRAC_REG;
    uint32_t MMCM_OUTPUT_DIV_REG;
    MMCM_OUTPUT_DIV = (float)(1550000000.0/PR_Frequency);
    MMCM_OUTPUT_DIV_FRAC = modf(MMCM_OUTPUT_DIV, &MMCM_OUTPUT_DIV_INT); 

    MMCM_OUTPUT_DIV_INT_REG = (unsigned short)MMCM_OUTPUT_DIV_INT;
    MMCM_OUTPUT_DIV_FRAC_REG = (unsigned short)(MMCM_OUTPUT_DIV_FRAC*1000.0f);
    MMCM_OUTPUT_DIV_REG = (uint32_t)((MMCM_OUTPUT_DIV_FRAC_REG << 8) | (MMCM_OUTPUT_DIV_INT_REG));
    cout << "Setting PR Module Clock Frequency to = " << PR_Frequency << endl;
    cout << "MMCM CLOCK_OUT_0 Output Divider = " << MMCM_OUTPUT_DIV << endl;
    cout << "MMCM CLOCK_OUT_0 Output Divider Integer = " << MMCM_OUTPUT_DIV_INT_REG << endl;
    cout << "MMCM CLOCK_OUT_0 Output Divider = " << MMCM_OUTPUT_DIV_FRAC_REG << endl;
    cout << "MMCM CLOCK_OUT_0 Output Register = " << hex << MMCM_OUTPUT_DIV_REG << endl;
    cout << dec;

    fpga_AXI_Lite_ptr->fpga_poke(PROG_CLOCK_DIVIDE_REGISTER, MMCM_OUTPUT_DIV_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(PROG_CLOCK_CONTROL_REGISTER, 0x00000003); 
}


