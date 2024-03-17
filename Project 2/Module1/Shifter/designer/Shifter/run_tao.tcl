set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\hdl\Shifter.v}
set_top_level {Shifter}
map_netlist
check_constraints {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\designer\Shifter\synthesis.fdc}
