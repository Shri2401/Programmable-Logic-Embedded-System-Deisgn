set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package fg484 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_name SF2Project
set_workdir {C:\Microsemi_prj\SF2Project\designer\SF2Project}
set_filename    {C:\Microsemi_prj\SF2Project\designer\SF2Project\SF2Project_ba}
set_design_state post_layout
set_language verilog