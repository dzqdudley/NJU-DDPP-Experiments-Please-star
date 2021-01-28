transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/44254/Desktop/digit_design_exp/exp3_alu {C:/Users/44254/Desktop/digit_design_exp/exp3_alu/exp_3_2_alu.v}

vlog -vlog01compat -work work +incdir+C:/Users/44254/Desktop/digit_design_exp/exp3_alu/simulation/modelsim {C:/Users/44254/Desktop/digit_design_exp/exp3_alu/simulation/modelsim/exp_3_2_alu.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  exp_3_2_alu_vlg_tst

add wave *
view structure
view signals
run -all