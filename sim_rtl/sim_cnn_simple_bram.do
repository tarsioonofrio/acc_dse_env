if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work


# Package with utilities - need to be before convolution core
vcom -work work ../apps/rtl_output/default/default/core/config_pkg.vhd
vcom -work work ../rtl/core/util_pkg.vhd
vcom -work work ../apps/rtl_output/default/default/bram/bram_36Kb.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_bram.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_multi.vhd


# Processing element
vcom -work work ../rtl/core/core_serial.vhd

# Network
vcom -work work ../rtl/cnn/simple.vhd


# Testbench
vcom -work work ../tb/tb_rtl_cnn.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/rtl_output/default/default/bram/generic_file36Kb.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
