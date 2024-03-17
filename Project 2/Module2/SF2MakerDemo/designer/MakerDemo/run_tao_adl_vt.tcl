set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {C:\ECEN5863\Project2\Module2\SF2MakerDemo\designer\MakerDemo\MakerDemo.adl}
read_afl {C:\ECEN5863\Project2\Module2\SF2MakerDemo\designer\MakerDemo\MakerDemo.afl}
map_netlist
check_constraints {C:\ECEN5863\Project2\Module2\SF2MakerDemo\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {C:\ECEN5863\Project2\Module2\SF2MakerDemo\designer\MakerDemo\timing_analysis.sdc}
