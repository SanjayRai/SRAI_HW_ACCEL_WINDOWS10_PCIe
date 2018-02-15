source ../../../device_type.tcl
set XILINX_OPENCL /home/applications/Xilinx/SDx/2017.2
set INCLUDES "-I../src -I../../common_src"

open_project vhls_prj
set_top sdx_cppKernel_top

add_files -tb ../../common_src/getCPUTime.cpp
add_files -tb ../src/tb_matrix_inv_5x5_north.cpp -cflags "-O3 -std=c++0x -DVHLS_FLOW -DGPP_ONLY_FLOW $INCLUDES -I$XILINX_OPENCL/runtime/include/1_2 -I$XILINX_OPENCL/Vivado_HLS/include -L$XILINX_OPENCL/runtime/lib/x86_64 -lrt"
add_files ../../common_src/sdx_pack_unpack.h -cflags "$INCLUDES"
add_files ../../common_src/srai_accel_utils.h -cflags "$INCLUDES"
add_files ../src/kernel_WRAPPER.cpp -cflags "$INCLUDES"
add_files ../src/matrix_utility_class.h -cflags "$INCLUDES"
add_files ../src/matrix_determinant_class.h -cflags "$INCLUDES"
add_files ../src/matrix_operation_wrapper.cpp -cflags "$INCLUDES"
add_files ../src/sdx_cppKernel_top.h -cflags "$INCLUDES"
add_files ../src/sdx_cppKernel_top.cpp -cflags "$INCLUDES"

open_solution "solution1"
config_interface -m_axi_addr64
set_part [DEVICE_TYPE] 
create_clock -period 8 -name default
csim_design
csynth_design
#cosim_design -ldflags {-lm -lrt}
export_design -format ip_catalog
exit
