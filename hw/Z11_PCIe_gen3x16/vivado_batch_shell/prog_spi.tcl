open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Xilinx/usb1.9]
set_property PARAM.FREQUENCY 6000000 [get_hw_targets */xilinx_tcf/Xilinx/usb1.9]
open_hw_target
current_hw_device [get_hw_devices xcku115_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xcku115_0] 0]
create_hw_cfgmem -hw_device [lindex [get_hw_devices xcku115_0] 0] [lindex [get_cfgmem_parts {mt25qu512-spi-x1_x2_x4}] 0]
set_property PROGRAM.PRM_FILES [list "/home/sanjayr/projects/TUL_CARD/TUL_KCU115/xDMA_KCU115_AXI_ICAP_PR_2/vivado_batch/KU115_AXI_ICAP_PR_DESIGN_top.prm" ] [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.ADDRESS_RANGE  {use_file} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.FILES [list "/home/sanjayr/projects/TUL_CARD/TUL_KCU115/xDMA_KCU115_AXI_ICAP_PR_2/vivado_batch/KU115_AXI_ICAP_PR_DESIGN_top.mcs" ] [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.PRM_FILE {/home/sanjayr/projects/TUL_CARD/TUL_KCU115/xDMA_KCU115_AXI_ICAP_PR_2/vivado_batch/KU115_AXI_ICAP_PR_DESIGN_top.prm} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.UNUSED_PIN_TERMINATION {pull-none} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.BLANK_CHECK  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.VERIFY  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
startgroup 
if {![string equal [get_property PROGRAM.HW_CFGMEM_TYPE  [lindex [get_hw_devices xcku115_0] 0]] [get_property MEM_TYPE [get_property CFGMEM_PART [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]]]] }  { create_hw_bitstream -hw_device [lindex [get_hw_devices xcku115_0] 0] [get_property PROGRAM.HW_CFGMEM_BITFILE [ lindex [get_hw_devices xcku115_0] 0]]; program_hw_devices [lindex [get_hw_devices xcku115_0] 0]; }; 
program_hw_cfgmem -hw_cfgmem [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcku115_0] 0]]
endgroup
close_hw
