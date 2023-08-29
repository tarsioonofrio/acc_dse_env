if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../experiments/rtl_output/default/default/layer/3/iwght_pkg.vhd
vcom -work work ../experiments/rtl_output/default/default/layer/3/ifmap_pkg.vhd
vcom -work work ../experiments/rtl_output/default/default/layer/3/gold_pkg.vhd
#vcom -work work ../experiments/rtl_output/default/default/layer/3/config_pkg.vhd
vcom -work work ../experiments/rtl_output/default/default/core/op_generics_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

# Convolution core
vcom -work work ../rtl/linear/linear_basic.vhd

# Testbench
vcom -work work ../tb/tb_rtl_linear.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/default/default/layer/3/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 
