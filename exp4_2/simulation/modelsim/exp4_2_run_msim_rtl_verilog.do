transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/44254/Desktop/digit_design_exp/exp4_2 {C:/Users/44254/Desktop/digit_design_exp/exp4_2/synchro.v}
vlog -vlog01compat -work work +incdir+C:/Users/44254/Desktop/digit_design_exp/exp4_2 {C:/Users/44254/Desktop/digit_design_exp/exp4_2/asynchro.v}
vlog -vlog01compat -work work +incdir+C:/Users/44254/Desktop/digit_design_exp/exp4_2 {C:/Users/44254/Desktop/digit_design_exp/exp4_2/exp4_2.v}

vlog -vlog01compat -work work +incdir+C:/Users/44254/Desktop/digit_design_exp/exp4_2/simulation/modelsim {C:/Users/44254/Desktop/digit_design_exp/exp4_2/simulation/modelsim/exp4_2.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  exp4_2_vlg_tst

add wave *
view structure
view signals
run -all