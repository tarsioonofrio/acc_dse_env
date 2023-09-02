if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../experiments/rtl_output/conv1out1s1/default/layer/0/ifmap_pkg.vhd
vcom -work work ../experiments/rtl_output/conv1out1s1/default/layer/0/iwght_pkg.vhd
vcom -work work ../experiments/rtl_output/conv1out1s1/default/layer/0/gold_pkg.vhd
vcom -work work ../experiments/rtl_output/conv1out1s1/default/core/op_generics_pkg.vhd


# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_stride1.vhd

# Testbench
vcom -work work ../tb/tb_rtl_split.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/conv1out1s1/default/layer/0/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1000 ns
#exit 


