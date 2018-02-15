open_hw
connect_hw_server -url localhost:3121
set BOARD_TARGET [get_hw_targets */xilinx_tcf/Xilinx/*]
current_hw_target $BOARD_TARGET 
set_property PARAM.FREQUENCY 15000000 $BOARD_TARGET 
open_hw_target
current_hw_device [get_hw_devices xcvu9p_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xcvu9p_0] 0]
set_property PROBES.FILE {./VU9P_AXI_ICAP_PR_DESIGN_top.ltx} [get_hw_devices xcvu9p_0]
set_property FULL_PROBES.FILE {./VU9P_AXI_ICAP_PR_DESIGN_top.ltx} [get_hw_devices xcvu9p_0]
set_property PROGRAM.FILE {./VU9P_AXI_ICAP_PR_DESIGN_top.IP_SDX_ACCL_KERNEL_FP_VECTOR_MULT.bit} [get_hw_devices xcvu9p_0]
set_param xicom.use_bitstream_version_check false
program_hw_devices [get_hw_devices xcvu9p_0]
refresh_hw_device [lindex [get_hw_devices xcvu9p_0] 0]
