onerror {resume}
# Create the library.
if [file exists work] {
    vdel -all
}
vlib work

source ../../apps/generic_synth.tcl

# Compile packages
vcom -work work ../../apps/inmem_pkg.vhd
vcom -work work ../../apps/gold_pkg.vhd

# Compile components
vcom ../../rtl/components/mem.vhd

# Compile the Verilog source(s).
vlog /soft64/design-kits/stm/28nm-cmos28fdsoi_24/C28SOI_SC_12_CORE_LR@2.0@20130411.0/behaviour/verilog/C28SOI_SC_12_CORE_LR.v
vlog /soft64/design-kits/stm/28nm-cmos28fdsoi_24/C28SOI_SC_12_CLK_LR@2.1@20130621.0/behaviour/verilog/C28SOI_SC_12_CLK_LR.v
vlog ../../psynth/28nm/results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/syst2d_is_slice_buf/layer${LAYER}/outputs/syst2d_is_slice_buf.v

# Compile the VHDL source(s).
vcom ../../tb/tb_netlist.vhd

# Simulate the design.
onerror {resume}
vsim -t ps -sdfmax /tb/DUT=../../psynth/28nm/results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/syst2d_is_slice_buf/layer${LAYER}/outputs/syst2d_is_slice_buf.sdf tb -f ../../apps/generic_file.txt
vcd file syst2d_is_slice_buf_${LAT}.vcd
vcd add -r /tb/DUT/*
do wave_syst2d_is_slice_buf.do
onfinish exit
onbreak exit
run -all

exit
