if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../apps/rtl_output/maxpool/default/layer/4/iwght_pkg.vhd
vcom -work work ../apps/rtl_output/maxpool/default/layer/4/ifmap_pkg.vhd
vcom -work work ../apps/rtl_output/maxpool/default/layer/4/gold_pkg.vhd
#vcom -work work ../apps/rtl_output/maxpool/default/layer/4/config_pkg.vhd
vcom -work work ../apps/rtl_output/maxpool/default/core/op_generics_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

# Convolution core
vcom -work work ../rtl/fully_connected/fully_connected_basic.vhd

# Testbench
vcom -work work ../tb/tb_rtl_fully_connected.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/rtl_output/maxpool/default/layer/4/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 