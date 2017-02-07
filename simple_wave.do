onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /simple_testbench/dut/clk
add wave -noupdate /simple_testbench/dut/reset
add wave -noupdate /simple_testbench/dut/w
add wave -noupdate /simple_testbench/dut/out
add wave -noupdate /simple_testbench/dut/ps
add wave -noupdate /simple_testbench/dut/ns
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 215
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 100
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {891 ps}
