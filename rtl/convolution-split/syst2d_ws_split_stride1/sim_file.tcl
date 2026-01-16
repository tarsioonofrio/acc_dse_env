if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

set CNN conv1-3x3
set RTL default
set LAYER 0
set LAYER_PATH "../../../experiments/rtl_output/$CNN/$RTL/layer/$LAYER"
set GENERIC_FILE "$LAYER_PATH/generic_file.txt"
set PATH "/home/tarsio/gaph/FastConv_SystemVerilog/data/ifn9/sim/sim-032-3-3-normal"

# Packages for CNN layer simulation
# vcom -work work $LAYER_PATH/ifmap_pkg.vhd
# vcom -work work $LAYER_PATH/iwght_pkg.vhd
# vcom -work work $LAYER_PATH/gold_pkg.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../../core/util_pkg.vhd

# Components
vcom -work work ../../components/mac/mac.vhd
vcom -work work ../../components/reg/reg.vhd
vcom -work work ../../components/mem_file/mem_file.vhd

# Convolution core
vcom -work work syst2d_ws_split_stride1.vhd

# Testbench
vcom -work work tb_syst2d_ws_split_stride1_file.vhd

# Simulation
set fh [open $GENERIC_FILE r]
set generic_line [read $fh]
close $fh

set generic_args [split $generic_line]
set filtered {}
foreach arg $generic_args {
  if {[string match "-gPATH=*" $arg]} {
    continue
  }
  lappend filtered $arg
}

vsim -voptargs=+acc=lprn -t ps work.tb -gPATH=$PATH {*}$filtered
do wave.do

run -all
