if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vlib pe0
vlib pe1

vmap work work
vmap pe0 pe0
vmap pe1 pe1

# Conv 1
# Packages for CNN layer simualtion
vcom -work pe0 ../apps/data_hw/default_default/0/inmem_pkg.vhd
vcom -work pe0 ../apps/data_hw/default_default/0/ifmap_pkg.vhd
vcom -work pe0 ../apps/data_hw/default_default/0/iwght_pkg.vhd
vcom -work pe0 ../apps/data_hw/default_default/0/gold_pkg.vhd

# Components
vcom -work pe0 ../rtl/components/mac.vhd
vcom -work pe0 ../rtl/components/reg.vhd
vcom -work pe0 ../rtl/components/mem_nofmap.vhd

# Convolution core
vcom -work pe0 ../rtl/convolution/syst2d_ws_split_multi.vhd

# Conv 2
# Packages for CNN layer simualtion
vcom -work pe1 ../apps/data_hw/default_default/1/inmem_pkg.vhd
vcom -work pe1 ../apps/data_hw/default_default/1/ifmap_pkg.vhd
vcom -work pe1 ../apps/data_hw/default_default/1/iwght_pkg.vhd
vcom -work pe1 ../apps/data_hw/default_default/1/gold_pkg.vhd

# Components
vcom -work pe1 ../rtl/components/mac.vhd
vcom -work pe1 ../rtl/components/reg.vhd
vcom -work pe1 ../rtl/components/mem_nofmap.vhd

# Convolution core
vcom -work pe1 ../rtl/convolution/syst2d_ws_split_multi.vhd

# Processing element
vcom -work work ../rtl/pe/pe_multi.vhd

# Testbench
vcom -work work ../tb/tb_rtl_pe.vhd

# Simulation
vsim -voptargs=+acc=lprn -t ps work.tb -f ../apps/data_hw/default_default/pe/generic_file.txt
#do wave_syst2d_ws.do
#onfinish exit
#onbreak exit
log -r /*
add wave sim:/tb/*
run -all
#run 1222 ns
#exit 
