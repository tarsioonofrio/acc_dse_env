if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
# ifmap_pkg, inmem_pkg and iwght_pkg are not used in simulation
vcom -work work ../apps/data_hw/default_default/layer/0/ifmap_pkg.vhd
vcom -work work ../apps/data_hw/default_default/layer/0/iwght_pkg.vhd
vcom -work work ../apps/data_hw/default_default/layer/0/gold_pkg.vhd


vcom -work work ../apps/rtl_code/default_default/layer/0/bram_36Kb.vhd
vcom -work work ../apps/rtl_code/default_default/layer/0/config_pkg.vhd



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

# Testbench
vcom -work work ../tb/tb_rtl_core_serial.vhd

# Get bram generics
set fp [open "../apps/rtl_code/default_default/layer/0/generic_file_bram36k.txt" r]
set bram_generics [read $fp]

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/rtl_code/default_default/layer/0/generic_file.txt {*}$bram_generics
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
