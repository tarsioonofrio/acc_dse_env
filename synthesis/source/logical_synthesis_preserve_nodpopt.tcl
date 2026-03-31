###############################################################################
# TOP
###############################################################################


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Load the pdk using MMMC"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	# Multi-Mode Multi-Corner (MMMC)
	read_mmmc "${GIT_ROOT}/synthesis/source/scripts/mmmc_tsmc_28_bv.tcl"


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Configuration of the Genus"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	set_multi_cpu_usage -local_cpu 112

	set_db lp_default_probability 0.5

	set_db syn_global_effort high

	### keep hierarchy
	set_db auto_ungroup none
	set_db hdl_parameter_naming_style ""

	### Set PLE (Generates a set of load values, which were obtained from the physical layout..
	# estimator (PLE) or wire-load model, for all the nets in the specified design)
	set_db interconnect_mode ple

	### controls the verbosity of the tool
	#set_db information_level 9

	### Avoid proceeding with latche inference
	set_db hdl_error_on_latch true

	### Preserve more RTL structure for controlled area comparisons
	set_db hdl_preserve_unused_registers true
	set_db delete_unloaded_insts false
	set_db optimize_merge_flops false
	set_db optimize_merge_latches false
	set_db optimize_constant_0_flops false
	set_db optimize_constant_feedback_seqs false


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Control Clock Gating "
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	set_db lp_insert_clock_gating false


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Load hdl files"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    read_hdl -language vhdl ${HDL_FILES}


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Elaboration"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	elaborate ${TOP_MODULE}

	# Applying the constraints
	init_design


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Synthesis - mapping only"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	syn_generic
	syn_map


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Write Reports"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	report_clock_gating > ${OUT_FILES}/reports/${TOP_MODULE}_clock_gating.rpt
	report_ple > ${OUT_FILES}/reports/${TOP_MODULE}_ple.rpt
	report_gates > ${OUT_FILES}/reports/${TOP_MODULE}_gates.rpt
	report_area > ${OUT_FILES}/reports/${TOP_MODULE}_area.rpt

	set CURRENT_VIEW analysis_view_0p81v_125c_capwst_slowest
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	report_timing > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}.rpt
	report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power_${CURRENT_VIEW}.rpt

	set CURRENT_VIEW analysis_view_0p90v_25c_captyp_nominal
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	report_timing > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}.rpt
	report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power_${CURRENT_VIEW}.rpt

	set CURRENT_VIEW analysis_view_0p99v_m40c_capbst_fastest
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	report_timing > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}.rpt
	report_power -unit mW > ${OUT_FILES}/reports/${TOP_MODULE}_power_${CURRENT_VIEW}.rpt

	report timing -lint -verbose > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}_verbose.rpt
	report_timing -unconstrained > ${OUT_FILES}/reports/${TOP_MODULE}_timing_setup_${CURRENT_VIEW}_verbose_unconstrained.rpt


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Write netlist"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	write_hdl > ${OUT_FILES}/gate_level/${TOP_MODULE}_logic_mapped.v

	set CURRENT_VIEW analysis_view_0p81v_125c_capwst_slowest
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	write_sdf > ${OUT_FILES}/gate_level/${TOP_MODULE}_${CURRENT_VIEW}.sdf

	set CURRENT_VIEW analysis_view_0p90v_25c_captyp_nominal
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	write_sdf > ${OUT_FILES}/gate_level/${TOP_MODULE}_${CURRENT_VIEW}.sdf

	set CURRENT_VIEW analysis_view_0p99v_m40c_capbst_fastest
	set_analysis_view -setup ${CURRENT_VIEW} -hold ${CURRENT_VIEW}
	write_sdf > ${OUT_FILES}/gate_level/${TOP_MODULE}_${CURRENT_VIEW}.sdf


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Export design to Innovus"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	set_analysis_view -setup analysis_view_0p81v_125c_capwst_slowest \
	              -hold analysis_view_0p99v_m40c_capbst_fastest

	write_design -innovus -base_name ${OUT_FILES}/physical_synthesis/work/data

	set CURRENT_VIEW analysis_view_0p90v_25c_captyp_nominal
	write_db ${OUT_FILES}/gate_level/${TOP_MODULE}_logic_mapped.db

	exit
