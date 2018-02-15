# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 

set_property  ip_repo_paths  ../HLS/SDX_ACCL_KERNEL_FP_VECTOR_MULT/vivado_hls_prj/vhls_prj/solution1/impl/ip [current_project]
update_ip_catalog

add_files -fileset sources_1 -norecurse {
../IP/vio_x8/vio_x8.xci
../IP/PCIe_Bridge_ICAP_complex/PCIe_Bridge_ICAP_complex.bd
../IP/HLS_PR_0/HLS_PR_0.bd
}

upgrade_ip -vlnv xilinx.com:hls:sdx_cppKernel_top:1.0 [get_ips  HLS_PR_0_sdx_cppKernel_top_0_0] -log ip_upgrade.log
export_ip_user_files -of_objects [get_ips HLS_PR_0_sdx_cppKernel_top_0_0] -no_script -sync -force -quiet
generate_target all [get_files HLS_PR_0.bd]
export_ip_user_files -of_objects [get_files HLS_PR_0.bd] -no_script -sync -force -quiet
export_simulation -of_objects [get_files HLS_PR_0.bd] -directory ./project_X/project_X.ip_user_files/sim_scripts -ip_user_files_dir ./project_X/project_X.ip_user_files -ipstatic_source_dir ./project_X/project_X.ip_user_files/ipstatic -lib_map_path [list {modelsim=./project_X/project_X.cache/compile_simlib/modelsim} {questa=./project_X/project_X.cache/compile_simlib/questa} {ies=./project_X/project_X.cache/compile_simlib/ies} {vcs=./project_X/project_X.cache/compile_simlib/vcs} {riviera=./project_X/project_X.cache/compile_simlib/riviera}] -use_ip_compiled_libs -force -quiet
