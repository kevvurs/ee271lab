onerror {resume}
quietly virtual function -install /DE1_SoC_testbench/dut -env /DE1_SoC_testbench/#INITIAL#66 { &{/DE1_SoC_testbench/dut/LEDR[9], /DE1_SoC_testbench/dut/LEDR[8], /DE1_SoC_testbench/dut/LEDR[7], /DE1_SoC_testbench/dut/LEDR[6], /DE1_SoC_testbench/dut/LEDR[5], /DE1_SoC_testbench/dut/LEDR[4], /DE1_SoC_testbench/dut/LEDR[3], /DE1_SoC_testbench/dut/LEDR[2], /DE1_SoC_testbench/dut/LEDR[1] }} ropeString
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group topLevel -label clk /DE1_SoC_testbench/dut/CLOCK_50
add wave -noupdate -expand -group topLevel -expand -group hardwareInput -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label reset {/DE1_SoC_testbench/dut/SW[9]}
add wave -noupdate -expand -group topLevel -expand -group hardwareInput -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label p1Button {/DE1_SoC_testbench/dut/KEY[0]}
add wave -noupdate -expand -group topLevel -expand -group hardwareInput -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label p2Button {/DE1_SoC_testbench/dut/KEY[3]}
add wave -noupdate -expand -group topLevel -expand -group hardwareOutput -color Gold -itemcolor Gold -label dash /DE1_SoC_testbench/dut/HEX0
add wave -noupdate -expand -group topLevel -expand -group hardwareOutput -color Gold -itemcolor Gold -label rope /DE1_SoC_testbench/dut/ropeString
add wave -noupdate -expand -group topLevel -expand -group circuitProperties -color Pink -itemcolor Pink -label pulseReset /DE1_SoC_testbench/dut/reset
add wave -noupdate -expand -group topLevel -expand -group circuitProperties -color Pink -itemcolor Pink -label xvr1 /DE1_SoC_testbench/dut/dev1
add wave -noupdate -expand -group topLevel -expand -group circuitProperties -color Pink -itemcolor Pink -label xvr2 /DE1_SoC_testbench/dut/dev2
add wave -noupdate -expand -group topLevel -expand -group circuitProperties -color Pink -itemcolor Pink -label player1Pulse /DE1_SoC_testbench/dut/play1
add wave -noupdate -expand -group topLevel -expand -group circuitProperties -color Pink -itemcolor Pink -label player2Pulse /DE1_SoC_testbench/dut/play2
add wave -noupdate -expand -group topLevel -expand -group circuitProperties -color Pink -itemcolor Pink -label player1Wins /DE1_SoC_testbench/dut/vic1
add wave -noupdate -expand -group topLevel -expand -group circuitProperties -color Pink -itemcolor Pink -label player2Wins /DE1_SoC_testbench/dut/vic2
add wave -noupdate -expand -group topLevel -group circuitResponses /DE1_SoC_testbench/dut/action
add wave -noupdate -expand -group topLevel -group circuitResponses /DE1_SoC_testbench/dut/leds1
add wave -noupdate -expand -group topLevel -group circuitResponses /DE1_SoC_testbench/dut/leds2
add wave -noupdate -expand -group topLevel -group circuitResponses /DE1_SoC_testbench/dut/victor
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/clk
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/reset
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/in
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/out
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/ns
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/ps
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/in_transient
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/in_validated
add wave -noupdate -group metastabilityFilters -group resetUIFilter /DE1_SoC_testbench/dut/ui_reset/signal
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/clk
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/reset
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/in
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/out
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/ns
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/ps
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/in_transient
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/in_validated
add wave -noupdate -group metastabilityFilters -group p1UIFilter /DE1_SoC_testbench/dut/ui1/signal
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/clk
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/reset
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/in
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/out
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/ns
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/ps
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/in_transient
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/in_validated
add wave -noupdate -group metastabilityFilters -group p2UIFilter /DE1_SoC_testbench/dut/ui2/signal
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/reset
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/player1
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/player2
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/deviate1
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/deviate2
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/out
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/ns
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/ps
add wave -noupdate -group delegatorModule /DE1_SoC_testbench/dut/del/signal
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/clk
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/reset
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/increment
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/idle
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/vulnerable
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/win
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/pattern
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/ps
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/ns
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/v
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/w
add wave -noupdate -group p1Activation /DE1_SoC_testbench/dut/p1/signal
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/clk
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/reset
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/increment
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/idle
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/vulnerable
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/win
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/pattern
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/ps
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/ns
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/v
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/w
add wave -noupdate -group p2Activation /DE1_SoC_testbench/dut/p2/signal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {606 ps} 0}
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
WaveRestoreZoom {0 ps} {2063 ps}
