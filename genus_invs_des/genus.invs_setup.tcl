#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 01/07/2025 02:59:55
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# Design Import
###########################################################
## Reading FlowKit settings file
source genus_invs_des/genus.flowkit_settings.tcl

source genus_invs_des/genus.invs_init.tcl

# Reading metrics file
######################
read_metric -id current genus_invs_des/genus.metrics.json 

## Reading Attributes file
source genus_invs_des/genus.attrs.tcl


# Mode Setup
###########################################################
source genus_invs_des/genus.mode

# Reading write_name_mapping file
#################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source genus_invs_des/genus.wnm_attrs.tcl
}

eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
