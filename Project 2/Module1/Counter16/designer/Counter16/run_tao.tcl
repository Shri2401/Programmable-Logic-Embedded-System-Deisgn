set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\hdl\Counter16.v}
set_top_level {Counter16}
map_netlist
check_constraints {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\designer\Counter16\synthesis.fdc}
