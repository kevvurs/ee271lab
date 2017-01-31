onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label Switch_Set0 /digitDisplay_testbench/dut/unit0/bcd
add wave -noupdate -color {Sky Blue} -itemcolor {Sky Blue} -label LED_Display0 /digitDisplay_testbench/dut/unit0/leds
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label Switch_Set1 /digitDisplay_testbench/dut/unit1/bcd
add wave -noupdate -color {Sky Blue} -itemcolor {Sky Blue} -label LED_Display1 /digitDisplay_testbench/dut/unit1/leds
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 260
configure wave -valuecolwidth 151
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
WaveRestoreZoom {0 ps} {526 ps}
