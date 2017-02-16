onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tow_input_testbench/dut/clk
add wave -noupdate /tow_input_testbench/dut/reset
add wave -noupdate -expand -group userInput /tow_input_testbench/dut/in
add wave -noupdate -expand -group userInput /tow_input_testbench/dut/in_transient
add wave -noupdate -expand -group userInput /tow_input_testbench/dut/in_validated
add wave -noupdate -expand -group state /tow_input_testbench/dut/ps
add wave -noupdate -expand -group state /tow_input_testbench/dut/ns
add wave -noupdate /tow_input_testbench/dut/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2178 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 307
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 50
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2482 ps}
