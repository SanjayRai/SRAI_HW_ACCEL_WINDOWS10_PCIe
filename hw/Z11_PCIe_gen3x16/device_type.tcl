# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

proc DEVICE_TYPE {} {
    return xcvu9p-fsgd2104-2-i
}

proc disp_hw {} {
open_hw
connect_hw_server -url mcmicro:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210251893419]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210251893419]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
set_property PROBES.FILE  {./xilinx_pcie3_uscale_ep.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./xilinx_pcie3_uscale_ep.bin} [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
set_property CONTROL.TRIGGER_POSITION 256 [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]
run_hw_ila [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]
wait_on_hw_ila [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]
display_hw_ila_data [upload_hw_ila_data [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]]
}

proc prog_hw {} {
open_hw
connect_hw_server -url mcmicro:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210251893419]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210251893419]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
set_property PROBES.FILE  {./xilinx_pcie3_uscale_ep.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./xilinx_pcie3_uscale_ep.bin} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
set_property CONTROL.TRIGGER_POSITION 256 [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]
run_hw_ila [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]
wait_on_hw_ila [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]
display_hw_ila_data [upload_hw_ila_data [get_hw_ilas -of_objects [get_hw_devices xcku040_0] -filter {CELL_NAME=~"pcie3_ultrascale_0_support_i/u_ila_ICAP"}]]
}
