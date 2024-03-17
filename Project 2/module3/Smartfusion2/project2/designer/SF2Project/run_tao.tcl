set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Microsemi_prj\SF2Project\component\work\SF2Project_MSS\SF2Project_MSS.v}
read_verilog -mode system_verilog {C:\Microsemi_prj\SF2Project\component\work\SF2Project\SF2Project.v}
set_top_level {SF2Project}
map_netlist
check_constraints {C:\Microsemi_prj\SF2Project\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Microsemi_prj\SF2Project\designer\SF2Project\synthesis.fdc}
