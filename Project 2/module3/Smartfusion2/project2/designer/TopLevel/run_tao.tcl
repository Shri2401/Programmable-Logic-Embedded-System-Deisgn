set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Microsemi_prj\project2\hdl\project2.v}
read_verilog -mode system_verilog {C:\Microsemi_prj\project2\hdl\TopLevel.v}
set_top_level {TopLevel}
map_netlist
check_constraints {C:\Microsemi_prj\project2\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Microsemi_prj\project2\designer\TopLevel\synthesis.fdc}
