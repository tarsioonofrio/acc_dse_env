if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../experiments/rtl_output/vgg11/default/layer/0/ifmap_pkg.vhd
vcom -work work ../experiments/rtl_output/vgg11/default/layer/0/iwght_pkg.vhd
vcom -work work ../experiments/rtl_output/vgg11/default/layer/0/gold_pkg.vhd
vcom -work work ../experiments/rtl_output/vgg11/default/core/op_generics_pkg.vhd


# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_stride1_pad1.vhd

# Testbench
vcom -work work ../tb/tb_rtl_split.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/vgg11/default/layer/0/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*

add wave sim:/tb/*
add wave sim:/tb/DUT/*
add wave sim:/tb/DUT/bias_x
add wave sim:/tb/DUT/weight_x
add wave sim:/tb/DUT/V
add wave sim:/tb/DUT/H
add wave sim:/tb/DUT/add
add wave sim:/tb/DUT/features
add wave sim:/tb/DUT/weight
add wave sim:/tb/DUT/reg_mac
add wave sim:/tb/DUT/reg_soma1
add wave sim:/tb/DUT/reg_soma2
add wave sim:/tb/DUT/reg_soma3
add wave sim:/tb/DUT/partial2
add wave sim:/tb/DUT/padv

run -all
#run 1000 ns
#exit 


