vcom -work work Waveform4.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.FA_from_component_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
