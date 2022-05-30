source ../../apps/generic_synth.tcl

read_db ../../psynth/28nm/results/${CLK_PERIOD}ns/${INPUT_SIZE}bit/${ARRAY_TYPE}_${DATAFLOW_TYPE}/layer${LAYER}/${ARRAY_TYPE}_${DATAFLOW_TYPE}_pos_filler.dat

read_activity_file -reset 

if { [string index ${DATAFLOW_TYPE} end-3] == "h" && [string index ${DATAFLOW_TYPE} end-2] == "i" && [string index ${DATAFLOW_TYPE} end-1] == "e" && [string index ${DATAFLOW_TYPE} end] == "r"} {
  puts "running hierarquical module"
  read_activity_file -scope tb/DUT/syst2d -format VCD ../../sim_netlist/28nm/${ARRAY_TYPE}_${DATAFLOW_TYPE}_${LAT}.vcd
} else {
  puts "running full module"
  read_activity_file -scope tb/DUT -format VCD ../../sim_netlist/28nm/${ARRAY_TYPE}_${DATAFLOW_TYPE}_${LAT}.vcd
}

report_vector_profile -hierarchy all -detailed_report true -out_file activity.report

exit
