set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Microsemi_prj\SF2Project\hdl\HW2P7.v}
set_top_level {HW2P7}
map_netlist
check_constraints {C:\Microsemi_prj\SF2Project\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Microsemi_prj\SF2Project\designer\HW2P7\synthesis.fdc}
