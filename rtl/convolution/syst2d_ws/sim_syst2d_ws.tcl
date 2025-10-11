if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

# Packages for CNN layer simualtion
vcom -work work ../../../experiments/rtl_output/default/default/layer/0/inmem_pkg.vhd
vcom -work work ../../../experiments/rtl_output/default/default/layer/0/gold_pkg.vhd

# Components
vcom -work work ../../components/mac/mac.vhd
vcom -work work ../../components/reg/reg.vhd
vcom -work work ../../components/mem/mem.vhd

# Convolution core
vcom -work work syst2d_ws.vhd

# Testbench
vcom -work work ../tb_rtl.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../../../experiments/rtl_output/default/default/layer/0/generic_file.txt
do wave_syst2d_ws.do
onfinish exit
onbreak exit
run -all
exit
