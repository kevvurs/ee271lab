onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lsfr_testbench/dut/clk
add wave -noupdate /lsfr_testbench/dut/in
add wave -noupdate /lsfr_testbench/dut/out
add wave -noupdate -radix unsigned /lsfr_testbench/dut/q
add wave -noupdate /lsfr_testbench/dut/v
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6069 ps} 0}
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
WaveRestoreZoom {5265 ps} {6069 ps}
