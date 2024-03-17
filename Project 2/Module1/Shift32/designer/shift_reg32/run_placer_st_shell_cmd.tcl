read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/Users/itssh/Desktop/Micosemi_prj/Shift32/designer/shift_reg32/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\shift_reg32_layout_combinational_loops.xml}
report -type slack {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\shift_reg32_place_and_route_constraint_coverage.xml}]
set reportfile {C:\Users\itssh\Desktop\Micosemi_prj\Shift32\designer\shift_reg32\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp