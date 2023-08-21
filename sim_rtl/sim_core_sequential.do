if {[file isdirectory work]} { vdel -all -lib work }
set num_layer 1
vlib work
vmap work work

# Packages for CNN layer simualtion
# inmem_pkg is not used in simulation

# vcom -work work ../apps/rtl_output/default/default/core/config_pkg.vhd
vcom -work work ../apps/rtl_output/default/default/core/op_generics_pkg.vhd


# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_file.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split.vhd
vcom -work work ../rtl/pool/maxpool2d.vhd
vcom -work work ../rtl/fully_connected/simple.vhd

# Processing element
vcom -work work ../rtl/core/core_sequential.vhd

# Testbench
vcom -work work ../tb/tb_rtl_core_sequential.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/rtl_output/default/default/layer/3/generic_file.txt
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
