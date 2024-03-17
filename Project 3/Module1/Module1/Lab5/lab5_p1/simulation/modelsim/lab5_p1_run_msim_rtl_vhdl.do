transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ECEN5863/Project 3/Submission/lab5_p1/modulo_k_counter.vhd}

