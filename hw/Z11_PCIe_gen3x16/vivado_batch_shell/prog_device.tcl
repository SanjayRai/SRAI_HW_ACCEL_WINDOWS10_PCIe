set DESIGN VU9P_AXI_ICAP_PR_DESIGN_top.HLS_FP_4X4_MATRIX_INVERT.HLS_FP_4X4_MATRIX_INVERT
open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Xilinx/usb*]
set_property PARAM.FREQUENCY 6000000 [get_hw_targets */xilinx_tcf/Xilinx/usb*]
open_hw_target
set_param xicom.use_bitstream_version_check false
set_property PROBES.FILE {./VU9P_AXI_ICAP_PR_DESIGN_top.ltx} [get_hw_devices xcvu9p_0]
set_property FULL_PROBES.FILE {./VU9P_AXI_ICAP_PR_DESIGN_top.ltx} [get_hw_devices xcvu9p_0]
set_property PROGRAM.FILE ./$DESIGN.bit [get_hw_devices xcvu9p_0]
program_hw_devices [get_hw_devices xcvu9p_0]
