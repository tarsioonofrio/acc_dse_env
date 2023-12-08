if {[file isdirectory work]} { vdel -all -lib work }
set num_layer 1
vlib work
vmap work work

# Packages for CNN layer simualtion
# inmem_pkg is not used in simulation

vcom -work work ../experiments/rtl_output/vgg11/vgg/core/op_generics_pkg.vhd


# Package with utilities - need to be before convolution core
vcom -work work ../rtl/core/util_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_file.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_stride1_pad1.vhd
vcom -work work ../rtl/pool/maxpool2d.vhd
vcom -work work ../rtl/linear/linear_basic.vhd

# Processing element
vcom -work work ../rtl/core/core_sequential.vhd

# Testbench
vcom -work work ../tb/tb_rtl_core_sequential.vhd

# Simulation
vsim -t ns work.tb -f ../experiments/rtl_output/vgg11/vgg/layer/4/generic_file.txt
onfinish exit
onbreak exit
run -all
exit 
