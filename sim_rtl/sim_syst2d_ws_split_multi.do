if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../apps/data_hw/default_default/0/inmem_pkg.vhd
vcom -work work ../apps/data_hw/default_default/0/ifmap_pkg.vhd
vcom -work work ../apps/data_hw/default_default/0/iwght_pkg.vhd
vcom -work work ../apps/data_hw/default_default/0/gold_pkg.vhd
vcom -work work ../apps/data_hw/default_default/0/config_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_wght_ifmap.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/pe/util_pkg.vhd


# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_multi.vhd

# Testbench
vcom -work work ../tb/tb_rtl_split_multi.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/data_hw/default_default/0/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 
