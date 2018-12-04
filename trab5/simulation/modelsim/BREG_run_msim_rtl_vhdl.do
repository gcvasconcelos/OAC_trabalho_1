transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/BREG/breg.vhd}

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/BREG/simulation/modelsim/BREG.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  BREG_tb

add wave *
view structure
view signals
run -all
