
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Comparador -dir "C:/Users/prestamo/Desktop/Nueva carpeta/Comparador/planAhead_run_4" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Comp.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Comp.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Comp $srcset
add_files [list {Comp.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
