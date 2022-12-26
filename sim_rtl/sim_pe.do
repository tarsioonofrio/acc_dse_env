if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../apps/data/inmem_pkg.vhd
vcom -work work ../apps/data/ifmap_pkg.vhd
vcom -work work ../apps/data/iwght_pkg.vhd
vcom -work work ../apps/data/gold_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split.vhd
vcom -work work ../rtl/pe.vhd

# Testbench
vcom -work work ../tb/tb_rtl_pe.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/data/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
add wave sim:/tb/DUT/*
run -all
#run 1000 ns
#exit 
