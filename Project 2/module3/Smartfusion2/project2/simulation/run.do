quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "C:/Microsemi_prj/SF2Project"

if {[file exists ../designer/HW2P7/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/HW2P7/simulation/postlayout already exists"
} else {
   file delete -force ../designer/HW2P7/simulation/postlayout 
   vlib ../designer/HW2P7/simulation/postlayout
}
vmap postlayout ../designer/HW2P7/simulation/postlayout
vmap SmartFusion2 "C:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work postlayout "${PROJECT_DIR}/designer/HW2P7/HW2P7_ba.v"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /HW2P7=${PROJECT_DIR}/designer/HW2P7/HW2P7_ba.sdf +transport_path_delays postlayout.HW2P7
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
