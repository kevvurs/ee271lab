onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lsfr_testbench/dut/clk
add wave -noupdate -expand -group {I/O feedback} /lsfr_testbench/dut/in
add wave -noupdate -expand -group {I/O feedback} /lsfr_testbench/dut/out
add wave -noupdate -color Aquamarine -itemcolor Aquamarine -label rNum -radix unsigned /lsfr_testbench/dut/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6725 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 359
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
WaveRestoreZoom {6230 ps} {6797 ps}
