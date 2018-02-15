# Created : 16:59:35, Fri May 20, 2017 : Sanjay Rai

.PHONY: all
all: help

create_all_ip:
	cd IP_SDX_ACCL_KERNEL_FP_VECTOR_MULT; vivado -mode batch -source inital_hls_sdx_import.tcl
	cd IP_SDX_ACCL_KERNEL_PASSTHRU; vivado -mode batch -source inital_hls_sdx_import.tcl
	cd IP_SDX_ACCL_MATRIX_INVERT_4X4_CPP_KERNEL; vivado -mode batch -source inital_hls_sdx_import.tcl
	cd IP_SDX_ACCL_MATRIX_INVERT_5X5_CPP_KERNEL; vivado -mode batch -source inital_hls_sdx_import.tcl
	cd IP_SDX_ACCL_MATRIX_MULT_6X6; vivado -mode batch -source inital_hls_sdx_import.tcl
clean:
	-cd IP_SDX_ACCL_KERNEL_FP_VECTOR_MULT; ./mk_clean.bat 
	-cd IP_SDX_ACCL_KERNEL_PASSTHRU; ./mk_clean.bat 
	-cd IP_SDX_ACCL_MATRIX_INVERT_4X4_CPP_KERNEL; ./mk_clean.bat 
	-cd IP_SDX_ACCL_MATRIX_INVERT_5X5_CPP_KERNEL; ./mk_clean.bat 
	-cd IP_SDX_ACCL_MATRIX_MULT_6X6; ./mk_clean.bat 

clean_all:
	-cd IP_SDX_ACCL_KERNEL_FP_VECTOR_MULT; ./mk_clean_all.bat 
	-cd IP_SDX_ACCL_KERNEL_PASSTHRU; ./mk_clean_all.bat 
	-cd IP_SDX_ACCL_MATRIX_INVERT_4X4_CPP_KERNEL; ./mk_clean_all.bat 
	-cd IP_SDX_ACCL_MATRIX_INVERT_5X5_CPP_KERNEL; ./mk_clean_all.bat 
	-cd IP_SDX_ACCL_MATRIX_MULT_6X6; ./mk_clean_all.bat 

help:
	@ echo "	make create_all_ip | clean | clean_all" 
