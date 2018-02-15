# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../../../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 

source ./sdx_ip_import.tcl
update_ip_catalog

add_files -fileset sources_1 -norecurse {
./HLS_PR_SDX_SRAI/HLS_PR_SDX_SRAI.bd
}

proc upgrade_HLS_ip {} {
upgrade_ip -vlnv xilinx.com:hls:sdx_cppKernel_top:1.0 [get_ips  HLS_PR_SDX_SRAI_sdx_cppKernel_top_0_0] -log ip_upgrade.log
export_ip_user_files -of_objects [get_ips HLS_PR_SDX_SRAI_sdx_cppKernel_top_0_0] -no_script -sync -force -quiet
generate_target all [get_files HLS_PR_SDX_SRAI.bd]
export_ip_user_files -of_objects [get_files HLS_PR_SDX_SRAI.bd] -no_script -sync -force -quiet
export_simulation -of_objects [get_files HLS_PR_SDX_SRAI.bd] -directory ./project_X/project_X.ip_user_files/sim_scripts -ip_user_files_dir ./project_X/project_X.ip_user_files -ipstatic_source_dir ./project_X/project_X.ip_user_files/ipstatic -lib_map_path [list {modelsim=./project_X/project_X.cache/compile_simlib/modelsim} {questa=./project_X/project_X.cache/compile_simlib/questa} {ies=./project_X/project_X.cache/compile_simlib/ies} {vcs=./project_X/project_X.cache/compile_simlib/vcs} {riviera=./project_X/project_X.cache/compile_simlib/riviera}] -use_ip_compiled_libs -force -quiet
}
