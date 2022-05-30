onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/DUT/clock
add wave -noupdate /tb/DUT/reset
add wave -noupdate /tb/DUT/start_conv
add wave -noupdate /tb/DUT/read_bias
add wave -noupdate /tb/clock
add wave -noupdate /tb/debug
add wave -noupdate /tb/end_conv
add wave -noupdate /tb/inmem_address
add wave -noupdate /tb/inmem_ce
add wave -noupdate /tb/inmem_n_read
add wave -noupdate /tb/inmem_n_write
add wave -noupdate /tb/inmem_valid
add wave -noupdate /tb/inmem_value
add wave -noupdate /tb/ofmap_address
add wave -noupdate /tb/ofmap_ce
add wave -noupdate /tb/ofmap_n_read
add wave -noupdate /tb/ofmap_n_write
add wave -noupdate /tb/ofmap_valid
add wave -noupdate /tb/ofmap_valid_delay
add wave -noupdate /tb/ofmap_we
add wave -noupdate /tb/pixel_in
add wave -noupdate /tb/pixel_out
add wave -noupdate /tb/start_conv
add wave -noupdate /tb/inmem_valid_delay
add wave -noupdate /tb/inmem_value_delay
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13011 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 195
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
configure wave -timelineunits ps
update
WaveRestoreZoom {12937 ps} {13065 ps}
