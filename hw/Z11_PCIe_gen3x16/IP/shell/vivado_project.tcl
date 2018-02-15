# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 

add_files -fileset sources_1 -norecurse {
./PCIe_Bridge_ICAP_complex/PCIe_Bridge_ICAP_complex.bd
}
