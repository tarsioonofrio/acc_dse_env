onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/DUT/reset
add wave -noupdate /tb/DUT/clock
add wave -noupdate /tb/DUT/start_conv
add wave -noupdate /tb/DUT/read_bias
add wave -noupdate /tb/DUT/read_weights
add wave -noupdate /tb/DUT/start_mac
add wave -noupdate /tb/INMEM/data_av
add wave -noupdate /tb/INMEM/data_out
add wave -noupdate /tb/INMEM/chip_en
add wave -noupdate -radix unsigned /tb/INMEM/address
add wave -noupdate /tb/pixel_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {37302574 ps} 0}
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
WaveRestoreZoom {36643607 ps} {37847194 ps}
