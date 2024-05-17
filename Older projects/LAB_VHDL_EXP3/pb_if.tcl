
set need_to_close_project 0
set make_assignments 1
if {[is_project_open]} {
if {[string compare $quartus(project) "pb_if"]} {
puts "Project pb_if is not open"
set make_assignments 0
}
} else {
set project_name pb_if
if {[project_exists pb_if]} {
project_open -revision pb_if pb_if
} else {
project_new -revision pb_if pb_if
}
set need_to_close_project 0
}
if {$make_assignments} {
load_package flow
set_global_assignment -name FAMILY "Cyclone IV E"
set_global_assignment -name DEVICE EP4CE115F29C7
set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE SPEED
set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
set_global_assignment -name DEVICE_FILTER_PIN_COUNT 780
set_global_assignment -name VHDL_FILE pb_if.vhd
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_location_assignment -to clk Pin_Y2
set_location_assignment -to rst Pin_AB28
set_location_assignment -to pb Pin_M23
set_location_assignment -to ssreg[6] Pin_G18
set_location_assignment -to ssreg[5] Pin_F22
set_location_assignment -to ssreg[4] Pin_E17
set_location_assignment -to ssreg[3] Pin_L26
set_location_assignment -to ssreg[2] Pin_L25
set_location_assignment -to ssreg[1] Pin_J22
set_location_assignment -to ssreg[0] Pin_H22
execute_flow -compile
set sof [pwd]/pb_if.sof
#quartus_pgmw –c USB-Blaster –m jtag –o p;pb_if.sof
if {$need_to_close_project} {project_close}
}