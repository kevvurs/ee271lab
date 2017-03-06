onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /safeHex_testbench/dut/clk
add wave -noupdate /safeHex_testbench/dut/reset
add wave -noupdate /safeHex_testbench/dut/enable
add wave -noupdate /safeHex_testbench/dut/interx
add wave -noupdate /safeHex_testbench/dut/ctrl
add wave -noupdate /safeHex_testbench/dut/hex
add wave -noupdate /safeHex_testbench/dut/pattern
add wave -noupdate /safeHex_testbench/dut/symbol
add wave -noupdate /safeHex_testbench/dut/ps
add wave -noupdate /safeHex_testbench/dut/ns
add wave -noupdate /safeHex_testbench/dut/cy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 128
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {26955 ps}
