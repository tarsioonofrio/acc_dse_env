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
add wave -noupdate -radix decimal /tb/iwght_value
add wave -noupdate -radix decimal /tb/ifmap_value
add wave -noupdate -radix decimal /tb/ofmap_out
add wave -noupdate -radix decimal /tb/ofmap_in
add wave -noupdate /tb/iwght_n_read
add wave -noupdate /tb/iwght_n_write
add wave -noupdate /tb/ifmap_n_read
add wave -noupdate /tb/ifmap_n_write
add wave -noupdate /tb/ofmap_n_read
add wave -noupdate /tb/ofmap_n_write
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {69 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 257
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {163840 ns}
