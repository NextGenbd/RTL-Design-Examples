log_begin timingpower_2.log
read_liberty ./lib/sky130_fd_sc_hd__tt_100C_1v80.lib
read_verilog synth_core.yv
link_design mkccore_axi4
create_clock -name clk -period 4000 {CLK}
elapsed_run_time
report_checks
report_power
log_end
exit



