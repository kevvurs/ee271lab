onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /DE1_SoC_testbench/dut/CLOCK_50
add wave -noupdate /DE1_SoC_testbench/dut/HEX0
add wave -noupdate /DE1_SoC_testbench/dut/HEX1
add wave -noupdate /DE1_SoC_testbench/dut/HEX2
add wave -noupdate /DE1_SoC_testbench/dut/HEX3
add wave -noupdate /DE1_SoC_testbench/dut/HEX4
add wave -noupdate /DE1_SoC_testbench/dut/HEX5
add wave -noupdate /DE1_SoC_testbench/dut/LEDR
add wave -noupdate /DE1_SoC_testbench/dut/KEY
add wave -noupdate /DE1_SoC_testbench/dut/SW
add wave -noupdate /DE1_SoC_testbench/dut/clk
add wave -noupdate /DE1_SoC_testbench/dut/pre_reset
add wave -noupdate /DE1_SoC_testbench/dut/reset
add wave -noupdate /DE1_SoC_testbench/dut/push
add wave -noupdate /DE1_SoC_testbench/dut/scrollLeft
add wave -noupdate /DE1_SoC_testbench/dut/scrollRight
add wave -noupdate /DE1_SoC_testbench/dut/fire
add wave -noupdate /DE1_SoC_testbench/dut/buffer
add wave -noupdate /DE1_SoC_testbench/dut/display
add wave -noupdate /DE1_SoC_testbench/dut/outClock
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {485 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 331
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
WaveRestoreZoom {578 ps} {2444 ps}
