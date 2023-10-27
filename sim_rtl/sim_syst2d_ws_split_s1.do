if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../experiments/rtl_output/default_s1/default/layer/2/ifmap_pkg.vhd
vcom -work work ../experiments/rtl_output/default_s1/default/layer/2/iwght_pkg.vhd
vcom -work work ../experiments/rtl_output/default_s1/default/layer/2/gold_pkg.vhd
vcom -work work ../experiments/rtl_output/default_s1/default/core/op_generics_pkg.vhd


# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_stride1b.vhd

# Testbench
vcom -work work ../tb/tb_rtl_split.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/default_s1/default/layer/2/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*

add wave sim:/tb/*
add wave sim:/tb/DUT/*
add wave sim:/tb/DUT/cont_total_valid
add wave sim:/tb/DUT/ofmap_value
add wave sim:/tb/DUT/ofmap_addres
add wave sim:/tb/DUT/add
add wave sim:/tb/DUT/features
add wave sim:/tb/DUT/reg_soma1
add wave sim:/tb/DUT/reg_soma2
add wave sim:/tb/DUT/reg_soma3
add wave sim:/tb/DUT/bias_x
add wave sim:/tb/DUT/weight
add wave sim:/tb/DUT/reg_mac

run -all
#run 1000 ns
#exit 


