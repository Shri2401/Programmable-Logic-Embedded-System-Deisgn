set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\shift_reg32.adl}
read_afl {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\shift_reg32.afl}
map_netlist
read_sdc {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\constraint\user.sdc}
check_constraints {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\timing_analysis.sdc}
