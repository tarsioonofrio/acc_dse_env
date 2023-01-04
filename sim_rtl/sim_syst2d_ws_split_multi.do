if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -2008 -work work ../apps/data_hw/default_default/0/inmem_pkg.vhd
vcom -2008 -work work ../apps/data_hw/default_default/0/ifmap_pkg.vhd
vcom -2008 -work work ../apps/data_hw/default_default/0/iwght_pkg.vhd
vcom -2008 -work work ../apps/data_hw/default_default/0/gold_pkg.vhd

# Components
vcom -2008 -work work ../rtl/components/mac.vhd
vcom -2008 -work work ../rtl/components/reg.vhd
vcom -2008 -work work ../rtl/components/mem.vhd
vcom -2008 -work work ../rtl/util_pkg.vhd
vcom -2008 -work work ../rtl/config_pkg.vhd

# Convolution core
vcom -2008 -work work ../rtl/convolution/syst2d_ws_split_multi.vhd

# Testbench
vcom -2008 -work work ../tb/tb_rtl_split_multi.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/data/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 
