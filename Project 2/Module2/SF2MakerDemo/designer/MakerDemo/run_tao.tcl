set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\ECEN5863\Project2\Module2\SF2MakerDemo\component\work\MakerDemo_sb\CCC_0\MakerDemo_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {C:\ECEN5863\Project2\Module2\SF2MakerDemo\component\work\MakerDemo_sb\FABOSC_0\MakerDemo_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {C:\ECEN5863\Project2\Module2\SF2MakerDemo\component\work\MakerDemo_sb_MSS\MakerDemo_sb_MSS.v}
read_verilog -mode system_verilog {C:\ECEN5863\Project2\Module2\SF2MakerDemo\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {C:\ECEN5863\Project2\Module2\SF2MakerDemo\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {C:\ECEN5863\Project2\Module2\SF2MakerDemo\component\work\MakerDemo_sb\MakerDemo_sb.v}
read_verilog -mode system_verilog {C:\ECEN5863\Project2\Module2\SF2MakerDemo\component\work\MakerDemo\MakerDemo.v}
set_top_level {MakerDemo}
map_netlist
check_constraints {C:\ECEN5863\Project2\Module2\SF2MakerDemo\constraint\synthesis_sdc_errors.log}
write_fdc {C:\ECEN5863\Project2\Module2\SF2MakerDemo\designer\MakerDemo\synthesis.fdc}
