if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vcom -work work ../apps/data_hw/default_default/core/config_pkg.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

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
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/data_hw/default_default/core/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 