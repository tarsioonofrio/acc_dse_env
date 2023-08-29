if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../experiments/rtl_output/default/default/layer/0/inmem_pkg.vhd
vcom -work work ../experiments/rtl_output/default/default/layer/0/gold_pkg.vhd

# Components
vcom -work work ../rtl/components/mac.vhd
vcom -work work ../rtl/components/reg.vhd
vcom -work work ../rtl/components/mem.vhd

# Convolution core
vcom -work work ../rtl/convolution/syst2d_ws.vhd

# Testbench
vlog -work work ../tb/tb_rtl.sv

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../experiments/rtl_output/default/default/layer/0/generic_file.txt
do wave_syst2d_ws.do
onfinish exit
onbreak exit
run -all
exit 
