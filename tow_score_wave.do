onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tow_score_testbench/dut/clk
add wave -noupdate /tow_score_testbench/dut/reset
add wave -noupdate /tow_score_testbench/dut/idle
add wave -noupdate /tow_score_testbench/dut/increment
add wave -noupdate -color Blue -itemcolor Blue -label presentState /tow_score_testbench/dut/ps
add wave -noupdate -color Blue -itemcolor Blue -label nextState /tow_score_testbench/dut/ns
add wave -noupdate -color Yellow -itemcolor Yellow -label PotentialFeed /tow_score_testbench/dut/vulnerable
add wave -noupdate -color Yellow -itemcolor Yellow -label LEDR /tow_score_testbench/dut/pattern
add wave -noupdate -color Yellow -itemcolor Yellow -label PlayWins /tow_score_testbench/dut/win
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1193 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 266
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
WaveRestoreZoom {0 ps} {2660 ps}
