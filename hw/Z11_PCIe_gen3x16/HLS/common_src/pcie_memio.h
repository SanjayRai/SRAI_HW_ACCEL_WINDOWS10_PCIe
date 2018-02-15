/* Sanjay Rai - Routine to access PCIe via  dev.mem mmap  */
#ifndef FPGA_MMIO_UTILS_H_
#define  FPGA_MMIO_UTILS_H_

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <string.h>
#include <errno.h>
#include <inttypes.h>
#include <iostream>
#include <iomanip>

using namespace std;

#define FAUT_CONDITION do { fprintf(stderr, "Error at line %d, file %s (%d) [%s]\n", __LINE__, __FILE__, errno, strerror(errno)); exit(1); } while(0)



class fpga_mmio {
    private :
        void *virt_page_base;
        int fp_dev_mem;
        uint32_t PAGE_SIZE;

    public :

        fpga_mmio (void) {}
        
        template <class access_type>
        int fpga_poke (uint32_t register_offset, access_type val) {
            volatile access_type *tmp_addr;
            tmp_addr = (access_type *)((uint8_t *)virt_page_base + register_offset);

            *((access_type *)tmp_addr) = val;
            return 0;
        }

        template <class access_type>
        access_type fpga_peek (uint32_t register_offset) {
            volatile access_type *tmp_addr;
            volatile access_type ret_val;
            tmp_addr = (access_type *)((uint8_t *)virt_page_base + register_offset);
            ret_val = *((access_type *)tmp_addr);
            return(ret_val);
        }


        template <class addr_type>
        int fpga_mmio_init(addr_type base_address, uint32_t PAGE_SIZE_i) {
            PAGE_SIZE = PAGE_SIZE_i;

            if((fp_dev_mem = open("/dev/xdma/card0/user", O_RDWR | O_SYNC)) == -1) FAUT_CONDITION;
            fflush(stdout);

            //cout << " Base Address = " << hex << "0x" << base_address << endl;
            virt_page_base = mmap(0, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fp_dev_mem, 0);
            //cout << " Virtual Base Address = " << hex << virt_page_base << endl;
            if(virt_page_base == (void *) -1) FAUT_CONDITION;

            return 0;
        }

        int fpga_mmio_clean() {
            if(munmap(virt_page_base, PAGE_SIZE) == -1) FAUT_CONDITION;
            close(fp_dev_mem);
            return 0;
        }
};

class fpga_xDMA {
	private :
		int fpga_fd_c2h;
		int fpga_fd_h2c;

	public :
		fpga_xDMA (void) {}

		int fpga_xDMA_init() {
			fpga_fd_c2h = open("/dev/xdma0_c2h_0", O_RDWR | O_NONBLOCK);
			if(fpga_fd_c2h < 0) FAUT_CONDITION;
			fpga_fd_h2c = open("/dev/xdma0_h2c_0", O_RDWR | O_NONBLOCK);
			if(fpga_fd_h2c < 0) FAUT_CONDITION;
			return 0;
		}

		int fpga_xDMA_read(uint32_t AXI_addr, char *buffer, uint32_t size ) {
                        off_t lseek_rc;
                        int count;
			lseek_rc = lseek(fpga_fd_c2h, AXI_addr, SEEK_SET);
			count = read(fpga_fd_c2h, buffer, size);
			return count;
		}

		int fpga_xDMA_read64(uint64_t AXI_addr, char *buffer, uint32_t size ) {
                        off64_t lseek_rc;
                        int count;
			lseek_rc = lseek64(fpga_fd_c2h, AXI_addr, SEEK_SET);
			count = read(fpga_fd_c2h, buffer, size);
			return count;
		}

		int fpga_xDMA_write(uint32_t AXI_addr, char *buffer, uint32_t size ) {
                        off_t lseek_rc;
                        int count;
			lseek_rc = lseek(fpga_fd_h2c, AXI_addr, SEEK_SET);
			count = write(fpga_fd_h2c, buffer, size);
			return count;
		}

		int fpga_xDMA_write64(uint64_t AXI_addr, char *buffer, uint32_t size ) {
                        off64_t lseek_rc;
                        int count;
			lseek_rc = lseek64(fpga_fd_h2c, AXI_addr, SEEK_SET);
			count = write(fpga_fd_h2c, buffer, size);
			return count;
		}

		int fpga_xDMA_clean() {
			close(fpga_fd_c2h);
			close(fpga_fd_h2c);
			return 0;
		}
}; 
#endif
