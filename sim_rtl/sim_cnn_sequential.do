if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vcom -work work ../experiments/rtl_output/default_s1b/default/core/op_generics_pkg.vhd

# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_file.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_stride1.vhd
vcom -work work ../rtl/pool/maxpool2d.vhd
vcom -work work ../rtl/linear/linear_basic.vhd

# Processing element
vcom -work work ../rtl/core/core_sequential.vhd

# Network
vcom -work work ../rtl/cnn/cnn_sequential.vhd


# Testbench
vcom -work work ../tb/tb_rtl_cnn.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/default_s1b/default/core/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
