onerror {resume}
quietly virtual function -install /DE1_SoC_testbench -env /DE1_SoC_testbench/#INITIAL#83 { &{/DE1_SoC_testbench/SW[9], /DE1_SoC_testbench/SW[8], /DE1_SoC_testbench/SW[7], /DE1_SoC_testbench/SW[6], /DE1_SoC_testbench/SW[5], /DE1_SoC_testbench/SW[4], /DE1_SoC_testbench/SW[3], /DE1_SoC_testbench/SW[2], /DE1_SoC_testbench/SW[1] }} playingField
quietly virtual function -install /DE1_SoC_testbench -env /DE1_SoC_testbench/#INITIAL#83 { &{/DE1_SoC_testbench/LEDR[9], /DE1_SoC_testbench/LEDR[8], /DE1_SoC_testbench/LEDR[7], /DE1_SoC_testbench/LEDR[6], /DE1_SoC_testbench/LEDR[5], /DE1_SoC_testbench/LEDR[4], /DE1_SoC_testbench/LEDR[3], /DE1_SoC_testbench/LEDR[2], /DE1_SoC_testbench/LEDR[1] }} playingField001
quietly virtual function -install /DE1_SoC_testbench -env /DE1_SoC_testbench/#INITIAL#83 { &{/DE1_SoC_testbench/SW[8], /DE1_SoC_testbench/SW[7], /DE1_SoC_testbench/SW[6], /DE1_SoC_testbench/SW[5], /DE1_SoC_testbench/SW[4], /DE1_SoC_testbench/SW[3], /DE1_SoC_testbench/SW[2], /DE1_SoC_testbench/SW[1], /DE1_SoC_testbench/SW[0] }} setting
quietly WaveActivateNextPane {} 0
add wave -noupdate /DE1_SoC_testbench/CLOCK_50
add wave -noupdate -color White -itemcolor White -label testClock /DE1_SoC_testbench/dut/p1/clk
add wave -noupdate -expand -group counters -color Yellow -itemcolor Yellow /DE1_SoC_testbench/dut/HEX0
add wave -noupdate -expand -group counters -color Yellow -itemcolor Yellow /DE1_SoC_testbench/dut/HEX5
add wave -noupdate -color Yellow -itemcolor Yellow -label playingField /DE1_SoC_testbench/playingField001
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} -radix unsigned /DE1_SoC_testbench/setting
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} -radix unsigned -childformat {{{/DE1_SoC_testbench/dut/q[9]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[8]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[7]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[6]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[5]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[4]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[3]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[2]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[1]} -radix unsigned} {{/DE1_SoC_testbench/dut/q[0]} -radix unsigned}} -subitemconfig {{/DE1_SoC_testbench/dut/q[9]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[8]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[7]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[6]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[5]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[4]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[3]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[2]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[1]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned} {/DE1_SoC_testbench/dut/q[0]} {-color {Cornflower Blue} -height 18 -itemcolor {Cornflower Blue} -radix unsigned}} /DE1_SoC_testbench/dut/q
add wave -noupdate -group reset {/DE1_SoC_testbench/dut/SW[9]}
add wave -noupdate -group reset /DE1_SoC_testbench/dut/pre_reset
add wave -noupdate -group reset /DE1_SoC_testbench/dut/reset
add wave -noupdate -expand -group userActions -color Coral -itemcolor Coral -label playerKey {/DE1_SoC_testbench/dut/KEY[0]}
add wave -noupdate -expand -group userActions -color {Medium Violet Red} -itemcolor {Medium Violet Red} -label cyberAction /DE1_SoC_testbench/dut/push
add wave -noupdate -expand -group userActions -color {Medium Violet Red} -itemcolor {Medium Violet Red} -label playerAction /DE1_SoC_testbench/dut/playerAction
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/toggle1
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/toggle2
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/w1
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/w2
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/game
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/leds1
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/leds2
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/games1
add wave -noupdate -group gameVars /DE1_SoC_testbench/dut/games2
add wave -noupdate -group lsfrFeedback /DE1_SoC_testbench/dut/in
add wave -noupdate -group lsfrFeedback /DE1_SoC_testbench/dut/out
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/cyber_input/clk
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/cyber_input/in
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/cyber_input/out
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/cyber_input/q
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/cyber_input/v
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/cyber_input/i
add wave -noupdate -group comparator /DE1_SoC_testbench/dut/comp/a
add wave -noupdate -group comparator /DE1_SoC_testbench/dut/comp/b
add wave -noupdate -group comparator /DE1_SoC_testbench/dut/comp/out
add wave -noupdate -group comparator /DE1_SoC_testbench/dut/comp/c
add wave -noupdate -group comparator /DE1_SoC_testbench/dut/comp/greaterThan
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/clk
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/reset
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/in
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/out
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/ns
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/ps
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/in_transient
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/in_validated
add wave -noupdate -group uiFilter /DE1_SoC_testbench/dut/p1/signal
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/clk
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/reset
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/player1
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/player2
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/deviate1
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/deviate2
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/out
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/ns
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/ps
add wave -noupdate -group delegator /DE1_SoC_testbench/dut/del/signal
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/clk
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/reset
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/increment
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/idle
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/vulnerable
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/win
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/pattern
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/ns
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/ps
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/v
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/w
add wave -noupdate -group scoreKeeper1 /DE1_SoC_testbench/dut/sc1/signal
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/clk
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/reset
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/increment
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/idle
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/vulnerable
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/win
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/pattern
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/ns
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/ps
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/v
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/w
add wave -noupdate -group scoreKeeper2 /DE1_SoC_testbench/dut/sc2/signal
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c1/clk
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c1/reset
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c1/in
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c1/display
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c1/ps
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c1/ns
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c1/num
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c2/clk
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c2/reset
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c2/in
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c2/display
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c2/ps
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c2/ns
add wave -noupdate -group pointSys /DE1_SoC_testbench/dut/c2/num
add wave -noupdate -group hexDisplays /DE1_SoC_testbench/dut/hexPlayer/bcd
add wave -noupdate -group hexDisplays /DE1_SoC_testbench/dut/hexPlayer/leds
add wave -noupdate -group hexDisplays /DE1_SoC_testbench/dut/hexCyber/bcd
add wave -noupdate -group hexDisplays /DE1_SoC_testbench/dut/hexCyber/leds
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
