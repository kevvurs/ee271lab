onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group topLevel -expand -group clock -color White -itemcolor White -label clock50 /DE1_SoC_testbench/dut/CLOCK_50
add wave -noupdate -expand -group topLevel -expand -group clock -color Gray80 -itemcolor Gray80 -label clkDiv /DE1_SoC_testbench/dut/clk
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label HEX0 /DE1_SoC_testbench/dut/HEX0
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label HEX1 /DE1_SoC_testbench/dut/HEX1
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label HEX2 /DE1_SoC_testbench/dut/HEX2
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label HEX3 /DE1_SoC_testbench/dut/HEX3
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label HEX4 /DE1_SoC_testbench/dut/HEX4
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label HEX5 /DE1_SoC_testbench/dut/HEX5
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label inputWnd /DE1_SoC_testbench/dut/displayBus
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label banner /DE1_SoC_testbench/dut/display
add wave -noupdate -expand -group topLevel -expand -group lights -color Yellow -itemcolor Yellow -label LEDR /DE1_SoC_testbench/dut/LEDR
add wave -noupdate -expand -group topLevel -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label KEY /DE1_SoC_testbench/dut/KEY
add wave -noupdate -expand -group topLevel -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label SW /DE1_SoC_testbench/dut/SW
add wave -noupdate -expand -group topLevel -expand -group userInteractions -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label scrollLeft /DE1_SoC_testbench/dut/goLeft
add wave -noupdate -expand -group topLevel -expand -group userInteractions -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label scrollRight /DE1_SoC_testbench/dut/goRight
add wave -noupdate -expand -group topLevel -expand -group userInteractions -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label submit /DE1_SoC_testbench/dut/submit
add wave -noupdate -expand -group topLevel -expand -group reset -color Orange -itemcolor Orange -label resetMSfilter /DE1_SoC_testbench/dut/pre_reset
add wave -noupdate -expand -group topLevel -expand -group reset -color Orange -itemcolor Orange -label reset /DE1_SoC_testbench/dut/reset
add wave -noupdate -expand -group topLevel -expand -group randomSafeCode -color {Dark Orchid} -itemcolor {Dark Orchid} -label in /DE1_SoC_testbench/dut/feedIn
add wave -noupdate -expand -group topLevel -expand -group randomSafeCode -color {Dark Orchid} -itemcolor {Dark Orchid} -label out /DE1_SoC_testbench/dut/feedOut
add wave -noupdate -expand -group topLevel -expand -group randomSafeCode -color {Dark Orchid} -itemcolor {Dark Orchid} -label lsfrRandomNum /DE1_SoC_testbench/dut/safeCode
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label lose /DE1_SoC_testbench/dut/lose
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label nAttempts /DE1_SoC_testbench/dut/attempts
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label correctCount /DE1_SoC_testbench/dut/cc
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label misplaceCount /DE1_SoC_testbench/dut/mc
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label totalCorrect /DE1_SoC_testbench/dut/totalCorrect
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label totalMisplaced /DE1_SoC_testbench/dut/totalMisplaced
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label flagCorrect /DE1_SoC_testbench/dut/cflag
add wave -noupdate -expand -group topLevel -expand -group stats -color Thistle -itemcolor Thistle -label flagMisplaced /DE1_SoC_testbench/dut/mflag
add wave -noupdate -expand -group topLevel -expand -group scrolling -color {Lime Green} -itemcolor {Lime Green} -label sel /DE1_SoC_testbench/dut/sel
add wave -noupdate -expand -group topLevel -expand -group scrolling -color {Lime Green} -itemcolor {Lime Green} -label enablePointer /DE1_SoC_testbench/dut/enables
add wave -noupdate -expand -group topLevel -expand -group comboInput -color {Dark Slate Blue} -itemcolor {Dark Slate Blue} -label comboParts -subitemconfig {{/DE1_SoC_testbench/dut/guessNums[3]} {-color {Dark Slate Blue} -itemcolor {Dark Slate Blue}} {/DE1_SoC_testbench/dut/guessNums[2]} {-color {Dark Slate Blue} -itemcolor {Dark Slate Blue}} {/DE1_SoC_testbench/dut/guessNums[1]} {-color {Dark Slate Blue} -itemcolor {Dark Slate Blue}} {/DE1_SoC_testbench/dut/guessNums[0]} {-color {Dark Slate Blue} -itemcolor {Dark Slate Blue}}} /DE1_SoC_testbench/dut/guessNums
add wave -noupdate -expand -group topLevel -expand -group comboInput -color {Dark Slate Blue} -itemcolor {Dark Slate Blue} -label comboFull /DE1_SoC_testbench/dut/guess
add wave -noupdate -group segEncoder7_4 -group {encoder[3]} {/DE1_SoC_testbench/dut/eachVal[3]/encoderUnit/hex}
add wave -noupdate -group segEncoder7_4 -group {encoder[3]} {/DE1_SoC_testbench/dut/eachVal[3]/encoderUnit/val}
add wave -noupdate -group segEncoder7_4 -group {encoder[2]} {/DE1_SoC_testbench/dut/eachVal[2]/encoderUnit/hex}
add wave -noupdate -group segEncoder7_4 -group {encoder[2]} {/DE1_SoC_testbench/dut/eachVal[2]/encoderUnit/val}
add wave -noupdate -group segEncoder7_4 -group {encoder[1]} {/DE1_SoC_testbench/dut/eachVal[1]/encoderUnit/hex}
add wave -noupdate -group segEncoder7_4 -group {encoder[1]} {/DE1_SoC_testbench/dut/eachVal[1]/encoderUnit/val}
add wave -noupdate -group segEncoder7_4 -group {encoder[0]} {/DE1_SoC_testbench/dut/eachVal[0]/encoderUnit/hex}
add wave -noupdate -group segEncoder7_4 -group {encoder[0]} {/DE1_SoC_testbench/dut/eachVal[0]/encoderUnit/val}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/clk}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/reset}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/enable}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/interx}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/ctrl}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/hex}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/pattern}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/symbol}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/ps}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/ns}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[3]} {/DE1_SoC_testbench/dut/eachHex[3]/displayUnit/cy}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/clk}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/reset}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/enable}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/interx}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/ctrl}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/hex}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/pattern}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/symbol}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/ps}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/ns}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[2]} {/DE1_SoC_testbench/dut/eachHex[2]/displayUnit/cy}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/clk}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/reset}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/enable}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/interx}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/ctrl}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/hex}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/pattern}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/symbol}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/ps}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/ns}
add wave -noupdate -group digitalSafeDisplay -group {interactiveHex[1]} {/DE1_SoC_testbench/dut/eachHex[1]/displayUnit/cy}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/clk}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/reset}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/enable}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/interx}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/ctrl}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/hex}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/pattern}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/symbol}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/ps}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/ns}
add wave -noupdate -group digitalSafeDisplay -expand -group {interactiveHex[0]} {/DE1_SoC_testbench/dut/eachHex[0]/displayUnit/cy}
add wave -noupdate -group clockDiv /DE1_SoC_testbench/dut/cdiv/clock
add wave -noupdate -group clockDiv /DE1_SoC_testbench/dut/cdiv/divided_clocks
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/dut/clk
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/dut/in
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/dut/reset
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/dut/out
add wave -noupdate -group lsfr -radix unsigned /DE1_SoC_testbench/dut/dut/q
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/dut/v
add wave -noupdate -group lsfr /DE1_SoC_testbench/dut/dut/i
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/clk
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/reset
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/in
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/out
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/ns
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/ps
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/in_transient
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/in_validated
add wave -noupdate -group keys -group key2Handler /DE1_SoC_testbench/dut/LeftScroll/signal
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/clk
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/reset
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/in
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/out
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/ns
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/ps
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/in_transient
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/in_validated
add wave -noupdate -group keys -group key1Handler /DE1_SoC_testbench/dut/RightScroll/signal
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/clk
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/reset
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/in
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/out
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/ns
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/ps
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/in_transient
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/in_validated
add wave -noupdate -group keys -group key3Handler /DE1_SoC_testbench/dut/subKey/signal
add wave -noupdate -group scrollOps /DE1_SoC_testbench/dut/scrl/clk
add wave -noupdate -group scrollOps /DE1_SoC_testbench/dut/scrl/reset
add wave -noupdate -group scrollOps /DE1_SoC_testbench/dut/scrl/inLeft
add wave -noupdate -group scrollOps /DE1_SoC_testbench/dut/scrl/inRight
add wave -noupdate -group scrollOps /DE1_SoC_testbench/dut/scrl/out
add wave -noupdate -group scrollOps /DE1_SoC_testbench/dut/scrl/ps
add wave -noupdate -group scrollOps /DE1_SoC_testbench/dut/scrl/ns
add wave -noupdate -group scrollOps -group decoder /DE1_SoC_testbench/dut/dec/in
add wave -noupdate -group scrollOps -group decoder /DE1_SoC_testbench/dut/dec/out
add wave -noupdate -group evaluator /DE1_SoC_testbench/dut/checkr/a
add wave -noupdate -group evaluator /DE1_SoC_testbench/dut/checkr/b
add wave -noupdate -group evaluator /DE1_SoC_testbench/dut/checkr/c
add wave -noupdate -group evaluator /DE1_SoC_testbench/dut/checkr/m
add wave -noupdate -group evaluator -group correctCounter /DE1_SoC_testbench/dut/countCorrect/data
add wave -noupdate -group evaluator -group correctCounter /DE1_SoC_testbench/dut/countCorrect/count
add wave -noupdate -group evaluator -group misplacedCounter /DE1_SoC_testbench/dut/countMisp/data
add wave -noupdate -group evaluator -group misplacedCounter /DE1_SoC_testbench/dut/countMisp/count
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/clk
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/reset
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/lose
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/nCorrect
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/nMisplaced
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/tries
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/safeDigits
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/display
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/mis
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/cor
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/t1
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/t2
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/cy
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/i
add wave -noupdate -group displayMain /DE1_SoC_testbench/dut/hexd/j
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 350
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
WaveRestoreZoom {0 ps} {819 ps}
