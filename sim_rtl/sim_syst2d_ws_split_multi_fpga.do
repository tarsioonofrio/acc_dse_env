if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../apps/rtl_output/default/default/bram/bram_36Kb.vhd
vcom -work work ../apps/rtl_output/default/default/core/config_pkg.vhd
vcom -work work ../apps/rtl_output/default/default/bram/config_const_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_bram.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd


# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_multi.vhd

# Testbench
vcom -work work ../tb/tb_rtl_split_multi_fpga.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/rtl_output/default/default/layer/0/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 
