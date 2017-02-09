onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /airport_testbench/dut/clk
add wave -noupdate /airport_testbench/dut/reset
add wave -noupdate -expand -group input /airport_testbench/dut/w
add wave -noupdate -expand -group input /airport_testbench/dut/w1
add wave -noupdate -expand -group input /airport_testbench/dut/w2
add wave -noupdate -expand -group state -color Blue -itemcolor Blue -label PresentState /airport_testbench/dut/ps
add wave -noupdate -expand -group state -color Firebrick -itemcolor Firebrick -label NextState /airport_testbench/dut/ns
add wave -noupdate /airport_testbench/dut/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1187 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 245
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
WaveRestoreZoom {0 ps} {1552 ps}
