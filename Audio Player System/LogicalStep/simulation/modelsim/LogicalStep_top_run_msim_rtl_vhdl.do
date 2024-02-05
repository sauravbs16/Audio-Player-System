transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib QD1
vmap QD1 QD1
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/QD1.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_avalon_st_adapter_008.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_uart.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_system_timer.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_sysid_qsys_0.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_switch_pio.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_stimulus_in.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_sdram_0.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_response_out.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_nios2_gen2_0.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_led_pio.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_lcd_display.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_jtag_uart_0.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_button_pio.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_av_config_serial_bus_controller.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_slow_clock_generator.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_av_config_auto_init.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_av_config_auto_init_ob_de1_soc.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_av_config_auto_init_ob_audio.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_av_config_auto_init_ob_adv7180.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_audio_i2c_config.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_altpll_0.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_audio_bit_counter.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_audio_in_deserializer.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_audio_out_serializer.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_clock_edge.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_up_sync_fifo.v}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_Audio.v}
vlog -vlog01compat -work work +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep {C:/Users/d3goel/Documents/ECE-224/LogicalStep/LogicalStep_top.v}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_irq_mapper.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_avalon_st_adapter_008_error_adapter_0.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_width_adapter.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_rsp_demux_007.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_cmd_mux_007.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_burst_adapter_uncmpr.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_router_010.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_router_009.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_router_002.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_router_001.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/QD1_mm_interconnect_0_router.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work QD1 +incdir+C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work QD1 {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/spi_master_if.vhd}
vcom -93 -work QD1 {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/spi_master_core.vhd}
vcom -93 -work QD1 {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/dual7segment_core.vhd}
vcom -93 -work QD1 {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/egm_core.vhd}
vcom -93 -work QD1 {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/LogicalStep_latency_tracker.vhd}
vcom -93 -work QD1 {C:/Users/d3goel/Documents/ECE-224/LogicalStep/QD1/synthesis/submodules/LogicalStep_pulse_generator.vhd}

