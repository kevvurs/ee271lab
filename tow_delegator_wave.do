onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tow_delegator_testbench/dut/clk
add wave -noupdate -expand -group input -color {Cornflower Blue} -itemcolor {Cornflower Blue} /tow_delegator_testbench/dut/reset
add wave -noupdate -expand -group input -color {Cornflower Blue} -itemcolor {Cornflower Blue} /tow_delegator_testbench/dut/player1
add wave -noupdate -expand -group input -color {Cornflower Blue} -itemcolor {Cornflower Blue} /tow_delegator_testbench/dut/player2
add wave -noupdate -label toggle1 /tow_delegator_testbench/dut/deviate1
add wave -noupdate -label toggle2 /tow_delegator_testbench/dut/deviate2
add wave -noupdate /tow_delegator_testbench/dut/ps
add wave -noupdate /tow_delegator_testbench/dut/ns
add wave -noupdate -color Yellow -itemcolor Yellow -label outputGamelogic /tow_delegator_testbench/dut/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 275
configure wave -valuecolwidth 112
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
WaveRestoreZoom {0 ps} {1081 ps}
