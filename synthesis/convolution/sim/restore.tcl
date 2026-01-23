
# XM-Sim Command File
# TOOL:	xmsim(64)	23.03-s003
#
#
# You can restore this configuration with:
#
#      xrun -access +rwc -input /sim/tarsio/acc_dse_env/synthesis/convolution/sim/shm.tcl -f args.txt -sv /sim/tarsio/acc_dse_env/rtl/convolution-split/syst2d_ws_split_stride1/tb_syst2d_ws_split_stride1_file.vhd ../logical/results/gate_level/convolution_logic_mapped.v -v200x /sim/tarsio/acc_dse_env/rtl/components/mac/mac.vhd /sim/tarsio/acc_dse_env/rtl/components/reg/reg.vhd /sim/tarsio/acc_dse_env/rtl/core/util_pkg.vhd /sim/tarsio/acc_dse_env/rtl/components/mem_file/mem_file.vhd /sim/tarsio/acc_dse_env/rtl/convolution-split/syst2d_ws_split_stride1/syst2d_ws_split_stride1.vhd -input restore.tcl
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
alias . run
alias indago verisium
alias quit exit
database -open -shm -into /sim/tarsio/acc_dse_env/synthesis/convolution/sim/dut.shm wave -default -event -statement
database -open -evcd -into waves.evcd waves -default
probe -create -database wave :dut:add :dut:adder_mux :dut:address_base :dut:bias_x :dut:buffer_features :dut:CARRY_SIZE :dut:ce_control :dut:ce_flag :dut:change_line :dut:change_line_reg :dut:channel_control :dut:channel_control_reg :dut:clock :dut:cont_conv :dut:cont_conv_plus1 :dut:cont_debug :dut:cont_iterations :dut:cont_steps :dut:cont_total_valid :dut:cont_valid :dut:cont_weight_cycles :dut:control_iteration_flag :dut:conv_length :dut:CONVS_PER_LINE :dut:debug :dut:debug_reg :dut:EA_add :dut:EA_read :dut:en_reg :dut:en_reg_flag :dut:end_conv :dut:end_conv_reg :dut:end_conv_signal :dut:features :dut:FILTER_WIDTH :dut:H :dut:ifmap_address :dut:ifmap_ce :dut:ifmap_valid :dut:ifmap_value :dut:in_ce :dut:INPUT_SIZE :dut:iwght_address :dut:iwght_address_reg :dut:iwght_ce :dut:iwght_ce_reg :dut:iwght_valid :dut:iwght_value :dut:MEM_SIZE :dut:N_CHANNEL :dut:N_FILTER :dut:ofmap_address :dut:ofmap_address_reg :dut:ofmap_ce :dut:ofmap_ce_reg :dut:ofmap_in :dut:ofmap_out :dut:ofmap_out_reg :dut:ofmap_valid :dut:ofmap_we :dut:ofmap_we_reg :dut:op1 :dut:op2 :dut:partial0 :dut:partial1 :dut:partial2 :dut:partial_add :dut:partial_add_reg :dut:partial_base :dut:partial_ce :dut:partial_control :dut:partial_valid_flag :dut:partial_wr :dut:pipe_reset :dut:read_bias :dut:read_bias_flag :dut:read_weight_flag :dut:read_weights :dut:reg_bias_value :dut:reg_mac :dut:reg_read_bias :dut:reg_read_weights :dut:reg_reg_bias_value :dut:reg_reg_start_mac :dut:reg_soma1 :dut:reg_soma2 :dut:reg_soma3 :dut:reg_start_mac :dut:res_mac :dut:reset :dut:SHIFT :dut:shift_output :dut:start_conv :dut:start_mac :dut:STRIDE :dut:update_add_base :dut:V :dut:valid_signal :dut:valid_sync_signal :dut:valid_sync_signal_reg :dut:weight :dut:weight_control :dut:weight_x :dut:X_SIZE

simvision -input restore.tcl.svcf
