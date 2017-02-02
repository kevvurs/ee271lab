onerror {resume}
quietly virtual function -install /storeDisplay_testbench/dutRegister -env /storeDisplay_testbench { &{/storeDisplay_testbench/dutRegister/U, /storeDisplay_testbench/dutRegister/P, /storeDisplay_testbench/dutRegister/C }} UPCCode
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group RegisterDisplay -color {Spring Green} -itemcolor {Spring Green} -label LEDDisplay0 -subitemconfig {{/storeDisplay_testbench/dutDisplay/DU0[6]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU0[5]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU0[4]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU0[3]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU0[2]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU0[1]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU0[0]} {-color {Spring Green} -itemcolor {Spring Green}}} /storeDisplay_testbench/dutDisplay/DU0
add wave -noupdate -expand -group RegisterDisplay -color {Spring Green} -itemcolor {Spring Green} -label LEDDisplay1 /storeDisplay_testbench/dutDisplay/DU1
add wave -noupdate -expand -group RegisterDisplay -color {Spring Green} -itemcolor {Spring Green} -label LEDDisplay2 /storeDisplay_testbench/dutDisplay/DU2
add wave -noupdate -expand -group RegisterDisplay -color {Spring Green} -itemcolor {Spring Green} -label LEDDisplay3 /storeDisplay_testbench/dutDisplay/DU3
add wave -noupdate -expand -group RegisterDisplay -color {Spring Green} -itemcolor {Spring Green} -label LEDDisplay4 /storeDisplay_testbench/dutDisplay/DU4
add wave -noupdate -expand -group RegisterDisplay -color {Spring Green} -itemcolor {Spring Green} -label LEDDisplay5 -subitemconfig {{/storeDisplay_testbench/dutDisplay/DU5[6]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU5[5]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU5[4]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU5[3]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU5[2]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU5[1]} {-color {Spring Green} -itemcolor {Spring Green}} {/storeDisplay_testbench/dutDisplay/DU5[0]} {-color {Spring Green} -itemcolor {Spring Green}}} /storeDisplay_testbench/dutDisplay/DU5
add wave -noupdate -expand -group RegisterInput -color Yellow -itemcolor Yellow -label UPCCode /storeDisplay_testbench/dutRegister/UPCCode
add wave -noupdate -expand -group RegisterInput -color Yellow -itemcolor Yellow -label isMarked /storeDisplay_testbench/dutRegister/M
add wave -noupdate -expand -group RegisterOutput -color {Cadet Blue} -itemcolor {Cadet Blue} -label isDiscounted /storeDisplay_testbench/dutRegister/DISC
add wave -noupdate -expand -group RegisterOutput -color Firebrick -itemcolor Firebrick -label isStolen /storeDisplay_testbench/dutRegister/STL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {43 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 226
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
WaveRestoreZoom {0 ps} {118 ps}
