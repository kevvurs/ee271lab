transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/hpadmin/workspace/ee271lab {C:/Users/hpadmin/workspace/ee271lab/DE1_SoC.sv}
vlog -sv -work work +incdir+C:/Users/hpadmin/workspace/ee271lab {C:/Users/hpadmin/workspace/ee271lab/seg7.sv}
vlog -sv -work work +incdir+C:/Users/hpadmin/workspace/ee271lab {C:/Users/hpadmin/workspace/ee271lab/digitDisplay.sv}

