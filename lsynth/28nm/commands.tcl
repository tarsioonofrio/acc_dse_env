##############################################################
##              Logical synthesis commands                  ##
##                   GAPH/FACIN/PUCRS                       ##
##############################################################

## 1) load synthesis configuration, read description and elaborate design 
include load.tcl
include ../../apps/generic_synth.tcl
read_hdl -language vhdl "mac.vhd reg.vhd ${ARRAY_TYPE}_${DATAFLOW_TYPE}.vhd"

if { [string index ${DATAFLOW_TYPE} end-3] == "h" && [string index ${DATAFLOW_TYPE} end-2] == "i" && [string index ${DATAFLOW_TYPE} end-1] == "e" && [string index ${DATAFLOW_TYPE} end] == "r"} {
  elaborate syst2d -parameters $parameters
  rename_obj [get_db designs] syst2d
} else {
  elaborate convolution -parameters $parameters
  rename_obj [get_db designs] convolution
}

## 2) read constraints
create_clock -period ${CLK_PERIOD} -name clock [get_ports clock]
read_sdc ./constraints.sdc
set_dont_use *SDF*

## 3) synthesize 
set_db auto_ungroup none

synthesize -to_mapped -eff high -no_incr
syn_opt  
syn_opt -incremental

## 4) build physical synthesis environment
write_design -encounter -basename results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/layout/${ARRAY_TYPE}_${DATAFLOW_TYPE}
write_design -encounter -basename ../../psynth/28nm/results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/layout/${ARRAY_TYPE}_${DATAFLOW_TYPE}

## 5) post synthesis reports
report area   > results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${REPORTS_PATH}/${ARRAY_TYPE}_${DATAFLOW_TYPE}_area.txt
report timing > results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${REPORTS_PATH}/${ARRAY_TYPE}_${DATAFLOW_TYPE}_timing.txt
report power  > results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${REPORTS_PATH}/${ARRAY_TYPE}_${DATAFLOW_TYPE}_power.txt
report_gates  > results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${REPORTS_PATH}/${ARRAY_TYPE}_${DATAFLOW_TYPE}_gates.txt
report_clock_gating  > results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${REPORTS_PATH}/${ARRAY_TYPE}_${DATAFLOW_TYPE}_clock_gating.txt
								
#Generate sdc pos synthesis
write_sdc > results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${OUTPUTS_PATH}/${ARRAY_TYPE}_${DATAFLOW_TYPE}.sdc
							
#Generate sdf pos synthesis
write_sdf > results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${OUTPUTS_PATH}/${ARRAY_TYPE}_${DATAFLOW_TYPE}.sdf

exit
