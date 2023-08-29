if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../experiments/rtl_output/default/default/layer/0/ifmap_pkg.vhd
vcom -work work ../experiments/rtl_output/default/default/layer/0/iwght_pkg.vhd
vcom -work work ../experiments/rtl_output/default/default/layer/0/gold_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split.vhd

# Processing element
vcom -work work ../rtl/core/core.vhd

# Testbench
vcom -work work ../tb/tb_rtl_core.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/default/default/layer/0/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 
