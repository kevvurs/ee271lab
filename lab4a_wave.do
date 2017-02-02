onerror {resume}
quietly virtual function -install /digitDisplay_testbench -env /digitDisplay_testbench { &{/digitDisplay_testbench/vals[3], /digitDisplay_testbench/vals[2], /digitDisplay_testbench/vals[1], /digitDisplay_testbench/vals[0] }} VirtualSwitchA1
quietly virtual function -install /digitDisplay_testbench -env /digitDisplay_testbench { &{/digitDisplay_testbench/vals[7], /digitDisplay_testbench/vals[6], /digitDisplay_testbench/vals[5], /digitDisplay_testbench/vals[4] }} VirtualSwitchA2
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group UnitA1 -color {Sky Blue} -itemcolor {Sky Blue} -label VirtualSwitchA1 /digitDisplay_testbench/VirtualSwitchA1
add wave -noupdate -expand -group UnitA1 -color {Sky Blue} -itemcolor {Sky Blue} -label LEDDisplayA1 /digitDisplay_testbench/display0
add wave -noupdate -expand -group UnitA2 -color Firebrick -itemcolor Firebrick -label VirtualSwitchA2 /digitDisplay_testbench/VirtualSwitchA2
add wave -noupdate -expand -group UnitA2 -color Firebrick -itemcolor Firebrick -label LEDDisplayA2 /digitDisplay_testbench/display1
add wave -noupdate -expand -group Debug -color {Medium Slate Blue} -itemcolor {Medium Slate Blue} -label DecVal -subitemconfig {{/digitDisplay_testbench/i[31]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[30]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[29]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[28]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[27]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[26]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[25]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[24]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[23]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[22]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[21]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[20]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[19]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[18]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[17]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[16]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[15]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[14]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[13]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[12]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[11]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[10]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[9]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[8]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[7]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[6]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[5]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[4]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[3]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[2]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[1]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}} {/digitDisplay_testbench/i[0]} {-color {Medium Slate Blue} -itemcolor {Medium Slate Blue}}} /digitDisplay_testbench/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {126 ps}
