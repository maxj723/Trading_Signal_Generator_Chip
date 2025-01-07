######################################################################

# Created by Genus(TM) Synthesis Solution 17.24-s038_1 on Tue Jan 07 02:59:55 EST 2025

# This file contains the RC script for design:day_trading

######################################################################

if {! [is_attribute wlec_internal_to_write_lec_db_for_invocation -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_invocation}
if {! [is_attribute wlec_internal_to_write_lec_db_for_label -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_label}
if {! [is_attribute wlec_internal_to_write_lec_label_data -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_label_data}
set_db -quiet information_level 7
set_db -quiet init_lib_search_path .
set_db -quiet design_mode_process 900.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 45 0.0 10.0} {to_generic 1 46 1 10} {first_condense 1 48 1 11} {PBS_Generic_Opt-Post 3 48 1.9698510000000002 11.969851} {{PBS_Generic-Postgen HBO Optimizations} 0 48 0.0 11.969851} {PBS_TechMap-Start 0 48 0.0 11.969851} {{PBS_TechMap-Premap HBO Optimizations} 0 48 0.0 11.969851} {second_condense 0 48 0 12} {reify 0 48 0 12} {global_incr_map 1 49 0 12} {{PBS_Techmap-Global Mapping} 1 49 0.8171990000000005 12.78705} {{PBS_TechMap-Datapath Postmap Operations} 0 49 0.0 12.78705} {{PBS_TechMap-Postmap HBO Optimizations} 0 49 0.0 12.78705} {{PBS_TechMap-Postmap Clock Gating} 0 49 0.0 12.78705} {{PBS_TechMap-Postmap Cleanup} 0 49 0.0 12.78705} {PBS_Techmap-Post_MBCI 0 49 0.0 12.78705} {incr_opt 0 50 0 13} }
set_db -quiet tinfo_tstamp_file .rs_mjohns79.tstamp
set_db -quiet metric_enable true
set_db -quiet script_search_path .
set_db -quiet use_area_from_lef true
set_db -quiet hdl_unconnected_marking_done true
set_db -quiet flow_metrics_snapshot_uuid ee936203-ce36-4bc4-a5cc-c8325196bda2
set_db -quiet compensative_dpul_driver 0
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet ple_mode global
set_db -quiet wireload_selection wireload_selection:default_emulate_libset_max/muddlib/foo
set_db -quiet operating_condition:default_emulate_libset_max/muddlib/typical .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/muddlib/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:day_trading .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 106794} {cell_count 321} {utilization  0.00} {runtime 1 46 1 10} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 71739} {cell_count 235} {utilization  0.00} {runtime 1 48 1 11} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 72011} {cell_count 236} {utilization  0.00} {runtime 0 48 0 12} }{reify {wns 214748365} {tns 0} {vep 0} {area 61365} {cell_count 198} {utilization  0.00} {runtime 0 48 0 12} }{global_incr_map {wns 214748365} {tns 0} {vep 0} {area 61365} {cell_count 198} {utilization  0.00} {runtime 1 49 0 12} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 61624} {cell_count 196} {utilization  0.00} {runtime 0 50 0 13} }}
set_db -quiet design:day_trading .is_sop_cluster true
set_db -quiet design:day_trading .seq_mbci_coverage 0.0
set_db -quiet design:day_trading .hdl_filelist {{default -v2001 {SYNTHESIS} {day_trading.v} {} {}}}
set_db -quiet design:day_trading .hdl_user_name day_trading
set_db -quiet design:day_trading .seq_reason_deleted {{day1 unloaded} {day2 unloaded} {day3 unloaded} {owned unloaded} {trend unloaded} {{action_out_reg[4]} {{constant 0}}} {{action_out_reg[5]} {{constant 0}}} {{action_out_reg[6]} {{constant 0}}} {{action_out_reg[7]} {{constant 0}}} {{action_out_reg[8]} {{constant 0}}} {{action_out_reg[9]} {{constant 0}}} {{action_out_reg[10]} {{constant 0}}} {{action_out_reg[11]} {{constant 0}}} {{action_out_reg[12]} {{constant 0}}} {{action_out_reg[13]} {{constant 0}}} {{action_out_reg[14]} {{constant 0}}} {{action_out_reg[15]} {{constant 0}}}}
set_db -quiet design:day_trading .verification_directory fv/day_trading
set_db -quiet design:day_trading .arch_filename day_trading.v
set_db -quiet design:day_trading .entity_filename day_trading.v
set_db -quiet port:day_trading/clk .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/clk .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/clk .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/clk .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/clk .min_transition no_value
set_db -quiet port:day_trading/clk .original_name clk
set_db -quiet port:day_trading/rst .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/rst .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/rst .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/rst .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:day_trading/rst .min_transition no_value
set_db -quiet port:day_trading/rst .original_name rst
set_db -quiet {port:day_trading/stock_in[15]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[15]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[15]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[15]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[15]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[15]} .original_name {stock_in[15]}
set_db -quiet {port:day_trading/stock_in[14]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[14]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[14]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[14]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[14]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[14]} .original_name {stock_in[14]}
set_db -quiet {port:day_trading/stock_in[13]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[13]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[13]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[13]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[13]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[13]} .original_name {stock_in[13]}
set_db -quiet {port:day_trading/stock_in[12]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[12]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[12]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[12]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[12]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[12]} .original_name {stock_in[12]}
set_db -quiet {port:day_trading/stock_in[11]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[11]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[11]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[11]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[11]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[11]} .original_name {stock_in[11]}
set_db -quiet {port:day_trading/stock_in[10]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[10]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[10]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[10]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[10]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[10]} .original_name {stock_in[10]}
set_db -quiet {port:day_trading/stock_in[9]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[9]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[9]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[9]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[9]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[9]} .original_name {stock_in[9]}
set_db -quiet {port:day_trading/stock_in[8]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[8]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[8]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[8]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[8]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[8]} .original_name {stock_in[8]}
set_db -quiet {port:day_trading/stock_in[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[7]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[7]} .original_name {stock_in[7]}
set_db -quiet {port:day_trading/stock_in[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[6]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[6]} .original_name {stock_in[6]}
set_db -quiet {port:day_trading/stock_in[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[5]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[5]} .original_name {stock_in[5]}
set_db -quiet {port:day_trading/stock_in[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[4]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[4]} .original_name {stock_in[4]}
set_db -quiet {port:day_trading/stock_in[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[3]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[3]} .original_name {stock_in[3]}
set_db -quiet {port:day_trading/stock_in[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[2]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[2]} .original_name {stock_in[2]}
set_db -quiet {port:day_trading/stock_in[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[1]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[1]} .original_name {stock_in[1]}
set_db -quiet {port:day_trading/stock_in[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:day_trading/stock_in[0]} .min_transition no_value
set_db -quiet {port:day_trading/stock_in[0]} .original_name {stock_in[0]}
set_db -quiet {port:day_trading/action_out[15]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[15]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[15]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[15]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[15]} .original_name {action_out[15]}
set_db -quiet {port:day_trading/action_out[15]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[14]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[14]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[14]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[14]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[14]} .original_name {action_out[14]}
set_db -quiet {port:day_trading/action_out[14]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[13]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[13]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[13]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[13]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[13]} .original_name {action_out[13]}
set_db -quiet {port:day_trading/action_out[13]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[12]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[12]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[12]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[12]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[12]} .original_name {action_out[12]}
set_db -quiet {port:day_trading/action_out[12]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[11]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[11]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[11]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[11]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[11]} .original_name {action_out[11]}
set_db -quiet {port:day_trading/action_out[11]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[10]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[10]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[10]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[10]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[10]} .original_name {action_out[10]}
set_db -quiet {port:day_trading/action_out[10]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[9]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[9]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[9]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[9]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[9]} .original_name {action_out[9]}
set_db -quiet {port:day_trading/action_out[9]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[8]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[8]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[8]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[8]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[8]} .original_name {action_out[8]}
set_db -quiet {port:day_trading/action_out[8]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[7]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[7]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[7]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[7]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[7]} .original_name {action_out[7]}
set_db -quiet {port:day_trading/action_out[7]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[6]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[6]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[6]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[6]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[6]} .original_name {action_out[6]}
set_db -quiet {port:day_trading/action_out[6]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[5]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[5]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[5]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[5]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[5]} .original_name {action_out[5]}
set_db -quiet {port:day_trading/action_out[5]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[4]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[4]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[4]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[4]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[4]} .original_name {action_out[4]}
set_db -quiet {port:day_trading/action_out[4]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[3]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[3]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[3]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[3]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[3]} .original_name {action_out[3]}
set_db -quiet {port:day_trading/action_out[3]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[2]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[2]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[2]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[2]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[2]} .original_name {action_out[2]}
set_db -quiet {port:day_trading/action_out[2]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[1]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[1]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[1]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[1]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[1]} .original_name {action_out[1]}
set_db -quiet {port:day_trading/action_out[1]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:day_trading/action_out[0]} .external_pin_cap_min 35.0
set_db -quiet {port:day_trading/action_out[0]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:day_trading/action_out[0]} .external_capacitance_min 35.0
set_db -quiet {port:day_trading/action_out[0]} .min_transition no_value
set_db -quiet {port:day_trading/action_out[0]} .original_name {action_out[0]}
set_db -quiet {port:day_trading/action_out[0]} .external_pin_cap {35.0 35.0}
set_db -quiet {inst:day_trading/trend_master_reg[0]} .original_name {{trend_master[0]}}
set_db -quiet {inst:day_trading/trend_master_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/trend_master_reg[0]} .single_bit_orig_name {trend_master[0]}
set_db -quiet {inst:day_trading/trend_master_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/trend_master_reg[0]/q} .original_name {trend_master[0]/q}
set_db -quiet {inst:day_trading/trend_master_reg[2]} .original_name {{trend_master[2]}}
set_db -quiet {inst:day_trading/trend_master_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/trend_master_reg[2]} .single_bit_orig_name {trend_master[2]}
set_db -quiet {inst:day_trading/trend_master_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/trend_master_reg[2]/q} .original_name {trend_master[2]/q}
set_db -quiet {inst:day_trading/trend_master_reg[1]} .original_name {{trend_master[1]}}
set_db -quiet {inst:day_trading/trend_master_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/trend_master_reg[1]} .single_bit_orig_name {trend_master[1]}
set_db -quiet {inst:day_trading/trend_master_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/trend_master_reg[1]/q} .original_name {trend_master[1]/q}
set_db -quiet {inst:day_trading/action_out_reg[2]} .original_name {{action_out[2]}}
set_db -quiet {inst:day_trading/action_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/action_out_reg[2]} .single_bit_orig_name {action_out[2]}
set_db -quiet {inst:day_trading/action_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/action_out_reg[2]/q} .original_name {action_out[2]/q}
set_db -quiet {inst:day_trading/action_out_reg[0]} .original_name {{action_out[0]}}
set_db -quiet {inst:day_trading/action_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/action_out_reg[0]} .single_bit_orig_name {action_out[0]}
set_db -quiet {inst:day_trading/action_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/action_out_reg[0]/q} .original_name {action_out[0]/q}
set_db -quiet {inst:day_trading/action_out_reg[1]} .original_name {{action_out[1]}}
set_db -quiet {inst:day_trading/action_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/action_out_reg[1]} .single_bit_orig_name {action_out[1]}
set_db -quiet {inst:day_trading/action_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/action_out_reg[1]/q} .original_name {action_out[1]/q}
set_db -quiet {inst:day_trading/action_out_reg[3]} .original_name {{action_out[3]}}
set_db -quiet {inst:day_trading/action_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/action_out_reg[3]} .single_bit_orig_name {action_out[3]}
set_db -quiet {inst:day_trading/action_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/action_out_reg[3]/q} .original_name {action_out[3]/q}
set_db -quiet {inst:day_trading/day1_master_reg[2]} .original_name {{day1_master[2]}}
set_db -quiet {inst:day_trading/day1_master_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day1_master_reg[2]} .single_bit_orig_name {day1_master[2]}
set_db -quiet {inst:day_trading/day1_master_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day1_master_reg[2]/q} .original_name {day1_master[2]/q}
set_db -quiet {inst:day_trading/day1_master_reg[3]} .original_name {{day1_master[3]}}
set_db -quiet {inst:day_trading/day1_master_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day1_master_reg[3]} .single_bit_orig_name {day1_master[3]}
set_db -quiet {inst:day_trading/day1_master_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day1_master_reg[3]/q} .original_name {day1_master[3]/q}
set_db -quiet {inst:day_trading/day1_master_reg[4]} .original_name {{day1_master[4]}}
set_db -quiet {inst:day_trading/day1_master_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day1_master_reg[4]} .single_bit_orig_name {day1_master[4]}
set_db -quiet {inst:day_trading/day1_master_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day1_master_reg[4]/q} .original_name {day1_master[4]/q}
set_db -quiet {inst:day_trading/day1_master_reg[1]} .original_name {{day1_master[1]}}
set_db -quiet {inst:day_trading/day1_master_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day1_master_reg[1]} .single_bit_orig_name {day1_master[1]}
set_db -quiet {inst:day_trading/day1_master_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day1_master_reg[1]/q} .original_name {day1_master[1]/q}
set_db -quiet {inst:day_trading/day1_master_reg[0]} .original_name {{day1_master[0]}}
set_db -quiet {inst:day_trading/day1_master_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day1_master_reg[0]} .single_bit_orig_name {day1_master[0]}
set_db -quiet {inst:day_trading/day1_master_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day1_master_reg[0]/q} .original_name {day1_master[0]/q}
set_db -quiet {inst:day_trading/day3_master_reg[4]} .original_name {{day3_master[4]}}
set_db -quiet {inst:day_trading/day3_master_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day3_master_reg[4]} .single_bit_orig_name {day3_master[4]}
set_db -quiet {inst:day_trading/day3_master_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day3_master_reg[4]/q} .original_name {day3_master[4]/q}
set_db -quiet {inst:day_trading/day3_master_reg[0]} .original_name {{day3_master[0]}}
set_db -quiet {inst:day_trading/day3_master_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day3_master_reg[0]} .single_bit_orig_name {day3_master[0]}
set_db -quiet {inst:day_trading/day3_master_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day3_master_reg[0]/q} .original_name {day3_master[0]/q}
set_db -quiet {inst:day_trading/day3_master_reg[2]} .original_name {{day3_master[2]}}
set_db -quiet {inst:day_trading/day3_master_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day3_master_reg[2]} .single_bit_orig_name {day3_master[2]}
set_db -quiet {inst:day_trading/day3_master_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day3_master_reg[2]/q} .original_name {day3_master[2]/q}
set_db -quiet {inst:day_trading/day3_master_reg[3]} .original_name {{day3_master[3]}}
set_db -quiet {inst:day_trading/day3_master_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day3_master_reg[3]} .single_bit_orig_name {day3_master[3]}
set_db -quiet {inst:day_trading/day3_master_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day3_master_reg[3]/q} .original_name {day3_master[3]/q}
set_db -quiet {inst:day_trading/current_state_slave_reg[0]} .original_name {{current_state_slave[0]}}
set_db -quiet {inst:day_trading/current_state_slave_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/current_state_slave_reg[0]} .single_bit_orig_name {current_state_slave[0]}
set_db -quiet {inst:day_trading/current_state_slave_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/current_state_slave_reg[0]/q} .original_name {current_state_slave[0]/q}
set_db -quiet inst:day_trading/owned_master_reg .original_name owned_master
set_db -quiet inst:day_trading/owned_master_reg .orig_hdl_instantiated false
set_db -quiet inst:day_trading/owned_master_reg .single_bit_orig_name owned_master
set_db -quiet inst:day_trading/owned_master_reg .gint_phase_inversion false
set_db -quiet pin:day_trading/owned_master_reg/q .original_name owned_master/q
set_db -quiet {inst:day_trading/current_state_slave_reg[1]} .original_name {{current_state_slave[1]}}
set_db -quiet {inst:day_trading/current_state_slave_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/current_state_slave_reg[1]} .single_bit_orig_name {current_state_slave[1]}
set_db -quiet {inst:day_trading/current_state_slave_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/current_state_slave_reg[1]/q} .original_name {current_state_slave[1]/q}
set_db -quiet {inst:day_trading/day3_master_reg[1]} .original_name {{day3_master[1]}}
set_db -quiet {inst:day_trading/day3_master_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day3_master_reg[1]} .single_bit_orig_name {day3_master[1]}
set_db -quiet {inst:day_trading/day3_master_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day3_master_reg[1]/q} .original_name {day3_master[1]/q}
set_db -quiet {inst:day_trading/current_state_slave_reg[2]} .original_name {{current_state_slave[2]}}
set_db -quiet {inst:day_trading/current_state_slave_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/current_state_slave_reg[2]} .single_bit_orig_name {current_state_slave[2]}
set_db -quiet {inst:day_trading/current_state_slave_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/current_state_slave_reg[2]/q} .original_name {current_state_slave[2]/q}
set_db -quiet {inst:day_trading/day2_master_reg[3]} .original_name {{day2_master[3]}}
set_db -quiet {inst:day_trading/day2_master_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day2_master_reg[3]} .single_bit_orig_name {day2_master[3]}
set_db -quiet {inst:day_trading/day2_master_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day2_master_reg[3]/q} .original_name {day2_master[3]/q}
set_db -quiet {inst:day_trading/day2_master_reg[1]} .original_name {{day2_master[1]}}
set_db -quiet {inst:day_trading/day2_master_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day2_master_reg[1]} .single_bit_orig_name {day2_master[1]}
set_db -quiet {inst:day_trading/day2_master_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day2_master_reg[1]/q} .original_name {day2_master[1]/q}
set_db -quiet {inst:day_trading/day2_master_reg[2]} .original_name {{day2_master[2]}}
set_db -quiet {inst:day_trading/day2_master_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day2_master_reg[2]} .single_bit_orig_name {day2_master[2]}
set_db -quiet {inst:day_trading/day2_master_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day2_master_reg[2]/q} .original_name {day2_master[2]/q}
set_db -quiet {inst:day_trading/day2_master_reg[0]} .original_name {{day2_master[0]}}
set_db -quiet {inst:day_trading/day2_master_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day2_master_reg[0]} .single_bit_orig_name {day2_master[0]}
set_db -quiet {inst:day_trading/day2_master_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day2_master_reg[0]/q} .original_name {day2_master[0]/q}
set_db -quiet {inst:day_trading/day2_master_reg[4]} .original_name {{day2_master[4]}}
set_db -quiet {inst:day_trading/day2_master_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/day2_master_reg[4]} .single_bit_orig_name {day2_master[4]}
set_db -quiet {inst:day_trading/day2_master_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/day2_master_reg[4]/q} .original_name {day2_master[4]/q}
set_db -quiet {inst:day_trading/next_state_master_reg[1]} .original_name {{next_state_master[1]}}
set_db -quiet {inst:day_trading/next_state_master_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/next_state_master_reg[1]} .single_bit_orig_name {next_state_master[1]}
set_db -quiet {inst:day_trading/next_state_master_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/next_state_master_reg[1]/q} .original_name {next_state_master[1]/q}
set_db -quiet {inst:day_trading/next_state_master_reg[2]} .original_name {{next_state_master[2]}}
set_db -quiet {inst:day_trading/next_state_master_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/next_state_master_reg[2]} .single_bit_orig_name {next_state_master[2]}
set_db -quiet {inst:day_trading/next_state_master_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/next_state_master_reg[2]/q} .original_name {next_state_master[2]/q}
set_db -quiet {inst:day_trading/next_state_master_reg[0]} .original_name {{next_state_master[0]}}
set_db -quiet {inst:day_trading/next_state_master_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:day_trading/next_state_master_reg[0]} .single_bit_orig_name {next_state_master[0]}
set_db -quiet {inst:day_trading/next_state_master_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:day_trading/next_state_master_reg[0]/q} .original_name {next_state_master[0]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 17.24-s038_1
## Written on 02:59:55 07-Jan 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_wildcard_end_steps -obj_type root]} {set_db flow_edit_wildcard_end_steps {}}
if {[is_attribute flow_edit_wildcard_start_steps -obj_type root]} {set_db flow_edit_wildcard_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_database_directory -obj_type root]} {set_db flow_database_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid ee936203-ce36-4bc4-a5cc-c8325196bda2}
if {[is_attribute flow_overwrite_database -obj_type root]} {set_db flow_overwrite_database false}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

