##############################################################
## Combinational synthesis constraints
##############################################################

set sdc_version 1.5
set_load_unit -femtofarads
set_time_unit -nanoseconds

set_driving_cell -lib_cell GINVD1BWP30P140 [all_inputs]
set_load [load_of [get_lib_pins GINVMCOD8BWP30P140/I]] [all_outputs]
