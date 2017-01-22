onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label M /DE1_SoC_testbench/dut2/M
add wave -noupdate -label U /DE1_SoC_testbench/dut1/U
add wave -noupdate -label P /DE1_SoC_testbench/dut1/P
add wave -noupdate -label C /DE1_SoC_testbench/dut1/C
add wave -noupdate -color Maroon -itemcolor Maroon -label isStolen /DE1_SoC_testbench/dut2/OUT
add wave -noupdate -color Blue -itemcolor Blue -label isDiscounted /DE1_SoC_testbench/dut1/OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 272
configure wave -valuecolwidth 171
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
WaveRestoreZoom {0 ps} {837 ps}
