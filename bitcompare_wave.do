onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label A -radix unsigned /bitcompare_testbench/dut/a
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label B -radix unsigned /bitcompare_testbench/dut/b
add wave -noupdate -color {Medium Slate Blue} -itemcolor {Medium Slate Blue} -label C -radix unsigned /bitcompare_testbench/dut/c
add wave -noupdate -color Coral -itemcolor Coral -label A>B /bitcompare_testbench/dut/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {38 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 251
configure wave -valuecolwidth 101
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
WaveRestoreZoom {0 ps} {84 ps}
