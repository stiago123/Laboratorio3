transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Desktop/6Sem/Digital/Practica/Laboratorios/Laboratorio3/Codigo/contador.vhd}
vcom -93 -work work {D:/Desktop/6Sem/Digital/Practica/Laboratorios/Laboratorio3/Codigo/ffJK.vhd}

