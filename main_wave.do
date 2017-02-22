onerror {resume}
quietly virtual function -install /DE1_SoC_testbench -env /DE1_SoC_testbench/#INITIAL#92 { &{/DE1_SoC_testbench/SW[8], /DE1_SoC_testbench/SW[7], /DE1_SoC_testbench/SW[6], /DE1_SoC_testbench/SW[5], /DE1_SoC_testbench/SW[4], /DE1_SoC_testbench/SW[3], /DE1_SoC_testbench/SW[2], /DE1_SoC_testbench/SW[1], /DE1_SoC_testbench/SW[0] }} setting
quietly WaveActivateNextPane {} 0
add wave -noupdate /DE1_SoC_testbench/dut/CLOCK_50
add wave -noupdate /DE1_SoC_testbench/dut/HEX0
add wave -noupdate /DE1_SoC_testbench/dut/HEX1
add wave -noupdate /DE1_SoC_testbench/dut/HEX2
add wave -noupdate /DE1_SoC_testbench/dut/HEX3
add wave -noupdate /DE1_SoC_testbench/dut/HEX4
add wave -noupdate /DE1_SoC_testbench/dut/HEX5
add wave -noupdate /DE1_SoC_testbench/dut/LEDR
add wave -noupdate /DE1_SoC_testbench/dut/in
add wave -noupdate /DE1_SoC_testbench/dut/out
add wave -noupdate -group reset {/DE1_SoC_testbench/dut/SW[9]}
add wave -noupdate -group reset /DE1_SoC_testbench/dut/pre_reset
add wave -noupdate -group reset /DE1_SoC_testbench/dut/reset
add wave -noupdate -radix unsigned -childformat {{{/DE1_SoC_testbench/dut/q[9]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[8]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[7]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[6]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[5]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[4]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[3]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[2]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[1]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[0]} -radix unsigned}} -subitemconfig {{/DE1_SoC_testbench/dut/q[9]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[8]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[7]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[6]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[5]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[4]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[3]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[2]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[1]} {-radix unsigned} {/DE1_SoC_testbench/dut/q[0]} {-radix unsigned}} /DE1_SoC_testbench/dut/q
add wave -noupdate -radix unsigned /DE1_SoC_testbench/setting
add wave -noupdate -expand -group userActions -label playerKey {/DE1_SoC_testbench/dut/KEY[0]}
add wave -noupdate -expand -group userActions -label cyberKey /DE1_SoC_testbench/dut/push
add wave -noupdate -expand -group gameAction /DE1_SoC_testbench/dut/cyberAction
add wave -noupdate -expand -group gameAction /DE1_SoC_testbench/dut/playerAction
add wave -noupdate /DE1_SoC_testbench/dut/toggle1
add wave -noupdate /DE1_SoC_testbench/dut/toggle2
add wave -noupdate /DE1_SoC_testbench/dut/w1
add wave -noupdate /DE1_SoC_testbench/dut/w2
add wave -noupdate /DE1_SoC_testbench/dut/game
add wave -noupdate /DE1_SoC_testbench/dut/leds1
add wave -noupdate /DE1_SoC_testbench/dut/leds2
add wave -noupdate /DE1_SoC_testbench/dut/games1
add wave -noupdate /DE1_SoC_testbench/dut/games2
add wave -noupdate /DE1_SoC_testbench/dut/p1/clk
add wave -noupdate /DE1_SoC_testbench/dut/p1/reset
add wave -noupdate /DE1_SoC_testbench/dut/p1/in
add wave -noupdate /DE1_SoC_testbench/dut/p1/out
add wave -noupdate /DE1_SoC_testbench/dut/p1/ns
add wave -noupdate /DE1_SoC_testbench/dut/p1/ps
add wave -noupdate /DE1_SoC_testbench/dut/p1/in_transient
add wave -noupdate /DE1_SoC_testbench/dut/p1/in_validated
add wave -noupdate /DE1_SoC_testbench/dut/p1/signal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {743 ps} 0}
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
WaveRestoreZoom {0 ps} {1866 ps}
