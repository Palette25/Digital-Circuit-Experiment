# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/VivadoProjects/Student_ID/Student_ID.cache/wt [current_project]
set_property parent.project_path E:/VivadoProjects/Student_ID/Student_ID.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/Lenovo/Desktop/74IP [current_project]
set_property ip_output_repo e:/VivadoProjects/Student_ID/Student_ID.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files E:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all E:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files E:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/design_1.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/VivadoProjects/Student_ID/Student_ID.srcs/constrs_1/new/id.xdc
set_property used_in_implementation false [get_files E:/VivadoProjects/Student_ID/Student_ID.srcs/constrs_1/new/id.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef design_1.dcp

catch { report_utilization -file design_1_utilization_synth.rpt -pb design_1_utilization_synth.pb }
