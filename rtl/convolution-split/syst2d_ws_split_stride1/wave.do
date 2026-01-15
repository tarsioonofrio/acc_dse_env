onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clock
add wave -noupdate /tb/reset
add wave -noupdate /tb/start_conv
add wave -noupdate /tb/debug
add wave -noupdate /tb/ofmap_valid
add wave -noupdate /tb/ofmap_ce
add wave -noupdate /tb/ofmap_we
add wave -noupdate /tb/iwght_ce
add wave -noupdate /tb/iwght_valid
add wave -noupdate /tb/ifmap_ce
add wave -noupdate /tb/ifmap_valid
add wave -noupdate /tb/end_conv
add wave -noupdate -radix unsigned /tb/iwght_address
add wave -noupdate -radix unsigned /tb/ifmap_address
add wave -noupdate -radix unsigned /tb/ofmap_address
add wave -noupdate -radix unsigned /tb/iwght_value
add wave -noupdate -radix unsigned /tb/ifmap_value
add wave -noupdate -radix unsigned /tb/ofmap_out
add wave -noupdate -radix unsigned /tb/ofmap_in
add wave -noupdate -radix unsigned /tb/iwght_n_read
add wave -noupdate -radix unsigned /tb/iwght_n_write
add wave -noupdate -radix unsigned /tb/ifmap_n_read
add wave -noupdate -radix unsigned /tb/ifmap_n_write
add wave -noupdate -radix unsigned /tb/ofmap_n_read
add wave -noupdate -radix unsigned /tb/ofmap_n_write
add wave -noupdate /tb/DUT/clock
add wave -noupdate /tb/DUT/reset
add wave -noupdate /tb/DUT/start_conv
add wave -noupdate /tb/DUT/end_conv
add wave -noupdate /tb/DUT/debug
add wave -noupdate /tb/DUT/iwght_valid
add wave -noupdate -radix unsigned /tb/DUT/iwght_value
add wave -noupdate -radix unsigned /tb/DUT/iwght_address
add wave -noupdate /tb/DUT/iwght_ce
add wave -noupdate /tb/DUT/ifmap_valid
add wave -noupdate -radix unsigned /tb/DUT/ifmap_value
add wave -noupdate -radix unsigned /tb/DUT/ifmap_address
add wave -noupdate /tb/DUT/ifmap_ce
add wave -noupdate /tb/DUT/ofmap_valid
add wave -noupdate -radix unsigned /tb/DUT/ofmap_in
add wave -noupdate -radix unsigned /tb/DUT/ofmap_out
add wave -noupdate -radix unsigned /tb/DUT/ofmap_address
add wave -noupdate /tb/DUT/ofmap_we
add wave -noupdate /tb/DUT/ofmap_ce
add wave -noupdate /tb/DUT/EA_add
add wave -noupdate /tb/DUT/EA_read
add wave -noupdate -radix unsigned /tb/DUT/weight
add wave -noupdate -radix unsigned /tb/DUT/features
add wave -noupdate -radix unsigned /tb/DUT/buffer_features
add wave -noupdate -radix unsigned /tb/DUT/op1
add wave -noupdate -radix unsigned /tb/DUT/op2
add wave -noupdate -radix unsigned /tb/DUT/res_mac
add wave -noupdate -radix unsigned /tb/DUT/reg_mac
add wave -noupdate -radix unsigned /tb/DUT/add
add wave -noupdate /tb/DUT/change_line
add wave -noupdate /tb/DUT/change_line_reg
add wave -noupdate /tb/DUT/in_ce
add wave -noupdate /tb/DUT/partial_ce
add wave -noupdate /tb/DUT/partial_wr
add wave -noupdate /tb/DUT/partial_valid_flag
add wave -noupdate /tb/DUT/en_reg_flag
add wave -noupdate /tb/DUT/control_iteration_flag
add wave -noupdate /tb/DUT/valid_sync_signal
add wave -noupdate /tb/DUT/update_add_base
add wave -noupdate /tb/DUT/ce_control
add wave -noupdate /tb/DUT/ce_flag
add wave -noupdate /tb/DUT/read_bias_flag
add wave -noupdate /tb/DUT/read_bias
add wave -noupdate /tb/DUT/read_weights
add wave -noupdate /tb/DUT/start_mac
add wave -noupdate /tb/DUT/end_conv_signal
add wave -noupdate /tb/DUT/end_conv_reg
add wave -noupdate /tb/DUT/read_weight_flag
add wave -noupdate /tb/DUT/en_reg
add wave -noupdate /tb/DUT/pipe_reset
add wave -noupdate /tb/DUT/valid_signal
add wave -noupdate /tb/DUT/reg_read_weights
add wave -noupdate /tb/DUT/reg_read_bias
add wave -noupdate /tb/DUT/reg_start_mac
add wave -noupdate /tb/DUT/reg_reg_start_mac
add wave -noupdate /tb/DUT/ofmap_ce_reg
add wave -noupdate /tb/DUT/ofmap_we_reg
add wave -noupdate /tb/DUT/debug_reg
add wave -noupdate /tb/DUT/valid_sync_signal_reg
add wave -noupdate /tb/DUT/iwght_ce_reg
add wave -noupdate -radix unsigned /tb/DUT/reg_reg_bias_value
add wave -noupdate -radix unsigned /tb/DUT/reg_bias_value
add wave -noupdate -radix unsigned /tb/DUT/adder_mux
add wave -noupdate -radix unsigned /tb/DUT/partial0
add wave -noupdate -radix unsigned /tb/DUT/partial1
add wave -noupdate -radix unsigned /tb/DUT/partial2
add wave -noupdate -radix unsigned /tb/DUT/reg_soma1
add wave -noupdate -radix unsigned /tb/DUT/reg_soma2
add wave -noupdate -radix unsigned /tb/DUT/reg_soma3
add wave -noupdate -radix unsigned /tb/DUT/shift_output
add wave -noupdate -radix unsigned /tb/DUT/ofmap_out_reg
add wave -noupdate -radix unsigned /tb/DUT/partial_add
add wave -noupdate -radix unsigned /tb/DUT/partial_add_reg
add wave -noupdate -radix unsigned /tb/DUT/partial_base
add wave -noupdate -radix unsigned /tb/DUT/cont_iterations
add wave -noupdate -radix unsigned /tb/DUT/weight_x
add wave -noupdate -radix unsigned /tb/DUT/bias_x
add wave -noupdate -radix unsigned /tb/DUT/weight_control
add wave -noupdate -radix unsigned /tb/DUT/cont_steps
add wave -noupdate -radix unsigned /tb/DUT/ofmap_address_reg
add wave -noupdate -radix unsigned /tb/DUT/iwght_address_reg
add wave -noupdate /tb/DUT/H
add wave -noupdate /tb/DUT/V
add wave -noupdate /tb/DUT/address_base
add wave -noupdate /tb/DUT/conv_length
add wave -noupdate /tb/DUT/channel_control
add wave -noupdate /tb/DUT/channel_control_reg
add wave -noupdate /tb/DUT/cont_weight_cycles
add wave -noupdate /tb/DUT/cont_valid
add wave -noupdate /tb/DUT/cont_total_valid
add wave -noupdate /tb/DUT/cont_conv
add wave -noupdate /tb/DUT/cont_conv_plus1
add wave -noupdate /tb/DUT/partial_control
add wave -noupdate /tb/DUT/cont_debug
add wave -noupdate /tb/clock
add wave -noupdate /tb/DUT/cont_total_valid
add wave -noupdate /tb/DUT/cont_valid
add wave -noupdate /tb/DUT/cont_conv
add wave -noupdate /tb/DUT/read_weight_flag
add wave -noupdate /tb/DUT/EA_read
add wave -noupdate /tb/DUT/iwght_valid
add wave -noupdate /tb/iwght_ce
add wave -noupdate /tb/DUT/cont_weight_cycles
add wave -noupdate -radix unsigned /tb/DUT/weight_control
add wave -noupdate -radix unsigned /tb/DUT/add
add wave -noupdate -radix unsigned /tb/DUT/ofmap_address
add wave -noupdate -radix unsigned /tb/DUT/ofmap_out
add wave -noupdate -radix unsigned /tb/DUT/reg_soma1
add wave -noupdate -radix unsigned /tb/DUT/reg_soma2
add wave -noupdate -radix unsigned /tb/DUT/reg_soma3
add wave -noupdate -radix unsigned /tb/DUT/bias_x
add wave -noupdate /tb/DUT/cont_weight_cycles
add wave -noupdate /tb/IFMAP/reset
add wave -noupdate /tb/IFMAP/clock
add wave -noupdate /tb/IFMAP/chip_en
add wave -noupdate /tb/IFMAP/wr_en
add wave -noupdate -radix decimal /tb/IFMAP/data_in
add wave -noupdate -radix unsigned /tb/IFMAP/address
add wave -noupdate /tb/IFMAP/data_av
add wave -noupdate -radix decimal /tb/IFMAP/data_out
add wave -noupdate -radix unsigned /tb/IFMAP/n_read
add wave -noupdate -radix unsigned /tb/IFMAP/n_write
add wave -noupdate /tb/IFMAP/EA_dataav
add wave -noupdate /tb/IFMAP/PE_dataav
add wave -noupdate /tb/IFMAP/cont_read
add wave -noupdate /tb/IFMAP/cont_write
add wave -noupdate /tb/IFMAP/cont_av_cycles
add wave -noupdate /tb/IFMAP/data_av_signal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {22487 ps} 0} {{Cursor 2} {166500 ps} 0} {{Cursor 3} {169474 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 214
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {7699275 ps} {7727247 ps}
