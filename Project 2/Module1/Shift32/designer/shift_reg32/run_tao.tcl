set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\hdl\shift_reg32.v}
set_top_level {shift_reg32}
map_netlist
check_constraints {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\synthesis.fdc}
