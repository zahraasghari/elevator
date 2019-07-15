transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/zahra/Desktop/ZahraAsghari-elevator-9400903/elevator1.vhd}

vcom -93 -work work {C:/Users/zahra/Desktop/ZahraAsghari-elevator-9400903/simulation/modelsim/elevator1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  elevator1

add wave *
view structure
view signals
run -all
