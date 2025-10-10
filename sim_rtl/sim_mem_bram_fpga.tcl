if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vcom -work work ../experiments/rtl_output/default/default/bram/bram_36Kb.vhd
vcom -work work ../experiments/rtl_output/default/default/layer/0/config_pkg.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd
vcom -work work ../rtl/components/mem_bram.vhd

vcom -work work ../tb/tb_rtl_mem_bram_fpga.vhd


# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/default/default/bram/generic_file36Kb.txt
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
