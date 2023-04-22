if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vcom -work work ../apps/rtl_output/maxpool/default/layer/2/iwght_pkg.vhd
vcom -work work ../apps/rtl_output/default/default/layer/2/config_pkg.vhd

# Packages for CNN layer simualtion
vcom -work work ../apps/rtl_output/maxpool/default/layer/3/ifmap_pkg.vhd
vcom -work work ../apps/rtl_output/maxpool/default/layer/3/gold_pkg.vhd
# vcom -work work ../apps/rtl_output/maxpool/default/layer/3/config_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd


# Convolution core
vcom -work work ../rtl/fully_connected/simple.vhd

# Testbench
vcom -work work ../tb/tb_rtl_fully_connected.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/rtl_output/maxpool/default/layer/2/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 
