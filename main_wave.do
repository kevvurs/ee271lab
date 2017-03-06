onerror {resume}
quietly virtual function -install /DE1_SoC_testbench -env /DE1_SoC_testbench/#INITIAL#83 { &{/DE1_SoC_testbench/SW[9], /DE1_SoC_testbench/SW[8], /DE1_SoC_testbench/SW[7], /DE1_SoC_testbench/SW[6], /DE1_SoC_testbench/SW[5], /DE1_SoC_testbench/SW[4], /DE1_SoC_testbench/SW[3], /DE1_SoC_testbench/SW[2], /DE1_SoC_testbench/SW[1] }} playingField
quietly virtual function -install /DE1_SoC_testbench -env /DE1_SoC_testbench/#INITIAL#83 { &{/DE1_SoC_testbench/LEDR[9], /DE1_SoC_testbench/LEDR[8], /DE1_SoC_testbench/LEDR[7], /DE1_SoC_testbench/LEDR[6], /DE1_SoC_testbench/LEDR[5], /DE1_SoC_testbench/LEDR[4], /DE1_SoC_testbench/LEDR[3], /DE1_SoC_testbench/LEDR[2], /DE1_SoC_testbench/LEDR[1] }} playingField001
quietly WaveActivateNextPane {} 0
add wave -noupdate /DE1_SoC_testbench/dut/CLOCK_50
add wave -noupdate /DE1_SoC_testbench/dut/HEX0
add wave -noupdate /DE1_SoC_testbench/dut/HEX5
add wave -noupdate /DE1_SoC_testbench/dut/in
add wave -noupdate /DE1_SoC_testbench/dut/out
add wave -noupdate -expand -group reset {/DE1_SoC_testbench/dut/SW[9]}
add wave -noupdate -expand -group reset /DE1_SoC_testbench/dut/pre_reset
add wave -noupdate -expand -group reset /DE1_SoC_testbench/dut/reset
add wave -noupdate -expand -group reset -radix unsigned /DE1_SoC_testbench/SW
add wave -noupdate -radix unsigned -childformat {{{/DE1_SoC_testbench/dut/q[9]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[8]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[7]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[6]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[5]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[4]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[3]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[2]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[1]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[0]} -radix unsigned}} -subitemconfig {{/DE1_SoC_testbench/dut/q[9]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[8]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[7]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[6]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[5]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[4]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[3]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[2]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[1]} {-height 18 -radix unsigned} {/DE1_SoC_testbench/dut/q[0]} {-height 18 -radix unsigned}} /DE1_SoC_testbench/dut/q
add wave -noupdate -expand -group userActions -color Coral -itemcolor Coral -label cyberKey /DE1_SoC_testbench/dut/push
add wave -noupdate -expand -group userActions -color Coral -itemcolor Coral -label playerKey {/DE1_SoC_testbench/dut/KEY[0]}
add wave -noupdate -expand -group userActions -color {Medium Violet Red} -itemcolor {Medium Violet Red} -label playerAction /DE1_SoC_testbench/dut/playerAction
add wave -noupdate -label playingField /DE1_SoC_testbench/playingField001
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
add wave -noupdate /DE1_SoC_testbench/dut/sc2/clk
add wave -noupdate /DE1_SoC_testbench/dut/sc2/reset
add wave -noupdate /DE1_SoC_testbench/dut/sc2/increment
add wave -noupdate /DE1_SoC_testbench/dut/sc2/idle
add wave -noupdate /DE1_SoC_testbench/dut/sc2/vulnerable
add wave -noupdate /DE1_SoC_testbench/dut/sc2/win
add wave -noupdate /DE1_SoC_testbench/dut/sc2/pattern
add wave -noupdate /DE1_SoC_testbench/dut/sc2/ps
add wave -noupdate /DE1_SoC_testbench/dut/sc2/ns
add wave -noupdate /DE1_SoC_testbench/dut/sc2/v
add wave -noupdate /DE1_SoC_testbench/dut/sc2/w
add wave -noupdate /DE1_SoC_testbench/dut/sc2/signal
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
WaveRestoreZoom {0 ps} {1866 ps}
