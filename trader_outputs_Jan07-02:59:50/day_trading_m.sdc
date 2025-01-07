# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.24-s038_1 on Tue Jan 07 02:59:56 EST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design day_trading

set_load -pin_load 0.035 [get_ports {action_out[15]}]
set_load -pin_load 0.035 [get_ports {action_out[14]}]
set_load -pin_load 0.035 [get_ports {action_out[13]}]
set_load -pin_load 0.035 [get_ports {action_out[12]}]
set_load -pin_load 0.035 [get_ports {action_out[11]}]
set_load -pin_load 0.035 [get_ports {action_out[10]}]
set_load -pin_load 0.035 [get_ports {action_out[9]}]
set_load -pin_load 0.035 [get_ports {action_out[8]}]
set_load -pin_load 0.035 [get_ports {action_out[7]}]
set_load -pin_load 0.035 [get_ports {action_out[6]}]
set_load -pin_load 0.035 [get_ports {action_out[5]}]
set_load -pin_load 0.035 [get_ports {action_out[4]}]
set_load -pin_load 0.035 [get_ports {action_out[3]}]
set_load -pin_load 0.035 [get_ports {action_out[2]}]
set_load -pin_load 0.035 [get_ports {action_out[1]}]
set_load -pin_load 0.035 [get_ports {action_out[0]}]
set_clock_gating_check -setup 0.0 
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports clk]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports rst]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[15]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[14]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[13]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[12]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[11]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[10]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[9]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[8]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[7]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[6]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[5]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[4]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[3]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[2]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[1]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {stock_in[0]}]
set_wire_load_selection_group "foo" -library "muddlib"
## List of unsupported SDC commands ##
set_fix_multiple_port_nets -all -buffer_constants
