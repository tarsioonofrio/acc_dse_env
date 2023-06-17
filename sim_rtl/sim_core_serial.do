if {[file isdirectory work]} { vdel -all -lib work }
set num_layer 1
vlib work
vmap work work

# Packages for CNN layer simualtion
# inmem_pkg is not used in simulation

vcom -work work ../apps/rtl_output/default/default/core/config_pkg.vhd
vcom -work work ../apps/rtl_output/default/default/bram/config_const_pkg.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_file.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_multi.vhd
vcom -work work ../rtl/pool/maxpool2d.vhd
vcom -work work ../rtl/fully_connected/simple.vhd

# Processing element
vcom -work work ../rtl/core/core_serial.vhd

# Testbench
vcom -work work ../tb/tb_rtl_core_serial.vhd

# Simulation
set fp [open "../apps/rtl_output/default/default/core/generic_file.txt" r]
set generic_file [read $fp]
set generics "-gN_LAYER_ERR=$num_layer $generic_file"
vsim -voptargs=+acc=lprn -t ps work.tb {*}$generics
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
