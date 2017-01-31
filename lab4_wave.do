onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/hex0
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/hex1
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/hex2
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/hex3
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/hex4
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/hex5
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/mupc
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/stolen
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/discounted
add wave -noupdate -expand -group {Fred's Store} /DE1_SoC_dual_testbench/mark
add wave -noupdate -expand -group 2x7Display /DE1_SoC_dual_testbench/display0
add wave -noupdate -expand -group 2x7Display /DE1_SoC_dual_testbench/display1
add wave -noupdate -expand -group 2x7Display /DE1_SoC_dual_testbench/vals
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 238
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
WaveRestoreZoom {1674 ps} {2607 ps}
