#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 01/07/2025 02:59:55
#
#####################################################################


read_mmmc genus_invs_des/genus.mmmc.tcl

read_physical -lef {/escnfs/courses/fa24-cse-30342.01/dropbox/mjohns79/VLSI/lab5solo/muddlib.lef}

read_netlist genus_invs_des/genus.v

init_design -skip_sdc_read
