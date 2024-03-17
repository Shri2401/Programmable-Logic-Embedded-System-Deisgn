set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\designer\Counter16\Counter16.adl}
read_afl {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\designer\Counter16\Counter16.afl}
map_netlist
read_sdc {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\constraint\COUNT16.sdc}
check_constraints {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\constraint\placer_sdc_errors.log}
write_sdc -mode layout {C:\Users\itssh\Desktop\Micosemi_prj\Counter16\designer\Counter16\place_route.sdc}
