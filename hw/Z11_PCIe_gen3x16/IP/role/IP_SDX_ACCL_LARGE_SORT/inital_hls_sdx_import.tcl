# Created : 9:31:38, Mon Aug 14, 2017 : Sanjay Rai
#

proc generate_target_HLS_ip {} {
validate_bd_design -force
set_property synth_checkpoint_mode None [get_files HLS_PR_SDX_SRAI.bd]
generate_target all [get_files HLS_PR_SDX_SRAI.bd]
export_ip_user_files -of_objects [get_files HLS_PR_SDX_SRAI.bd] -no_script -sync -force -quiet
export_simulation -of_objects [get_files HLS_PR_SDX_SRAI.bd] -directory ./project_X/project_X.ip_user_files/sim_scripts -ip_user_files_dir ./project_X/project_X.ip_user_files -ipstatic_source_dir ./project_X/project_X.ip_user_files/ipstatic -lib_map_path [list {modelsim=./project_X/project_X.cache/compile_simlib/modelsim} {questa=./project_X/project_X.cache/compile_simlib/questa} {ies=./project_X/project_X.cache/compile_simlib/ies} {vcs=./project_X/project_X.cache/compile_simlib/vcs} {riviera=./project_X/project_X.cache/compile_simlib/riviera}] -use_ip_compiled_libs -force -quiet
}

source ../../../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 

source ./sdx_ip_import.tcl
update_ip_catalog
create_ip -name sdx_cppKernel_top -vendor xilinx.com -library hls -version 1.0 -module_name $SDX_IP -dir ./ 
generate_target {instantiation_template} [get_files ./$SDX_IP/$SDX_IP.xci]
update_compile_order -fileset sources_1
set_property generate_synth_checkpoint false [get_files  ./$SDX_IP/$SDX_IP.xci]
generate_target all [get_files  ./$SDX_IP/$SDX_IP.xci]
export_ip_user_files -of_objects [get_files ./$SDX_IP/$SDX_IP.xci] -no_script -sync -force -quiet
export_simulation -of_objects [get_files ./$SDX_IP/$SDX_IP.xci] -directory ./project_X/project_X.ip_user_files/sim_scripts -ip_user_files_dir ./project_X/project_X.ip_user_files -ipstatic_source_dir ./project_X/project_X.ip_user_files/ipstatic -lib_map_path [list {modelsim=./project_X/project_X.cache/compile_simlib/modelsim} {questa=./project_X/project_X.cache/compile_simlib/questa} {ies=./project_X/project_X.cache/compile_simlib/ies} {vcs=./project_X/project_X.cache/compile_simlib/vcs} {riviera=./project_X/project_X.cache/compile_simlib/riviera}] -use_ip_compiled_libs -force -quiet
source ./HLS_PR_SDX_SRAI_bd.tcl

generate_target_HLS_ip
