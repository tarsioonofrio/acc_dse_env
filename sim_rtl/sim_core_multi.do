if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../apps/rtl_output/default/default/core/config_pkg.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_file.vhd


# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_multi.vhd

# Processing element
vcom -work work ../rtl/core/core_multi.vhd

# Testbench
vcom -work work ../tb/tb_rtl_core_multi.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/rtl_output/default/default/core/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
