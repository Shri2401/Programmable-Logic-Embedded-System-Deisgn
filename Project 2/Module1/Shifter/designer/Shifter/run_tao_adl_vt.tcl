set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\designer\Shifter\Shifter.adl}
read_afl {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\designer\Shifter\Shifter.afl}
map_netlist
read_sdc {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\constraint\user.sdc}
check_constraints {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {C:\Users\itssh\Desktop\Micosemi_prj\Shifter\designer\Shifter\timing_analysis.sdc}
