if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../experiments/rtl_output/vgg11/vgg/layer/0/ifmap_pkg.vhd
vcom -work work ../experiments/rtl_output/vgg11/vgg/layer/0/iwght_pkg.vhd
vcom -work work ../experiments/rtl_output/vgg11/vgg/layer/0/gold_pkg.vhd
vcom -work work ../experiments/rtl_output/vgg11/vgg/core/op_generics_pkg.vhd


# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem_split.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws_split_stride1_pad1.vhd

# Testbench
vcom -work work ../tb/tb_rtl_split.vhd

# Simulation
vsim -t ns work.tb -f ../experiments/rtl_output/vgg11/vgg/layer/0/generic_file.txt
set StdArithNoWarnings 1
set NumericStdNoWarnings 1
onfinish exit
onbreak exit
run -all
exit


