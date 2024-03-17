open_project -project {C:\ECEN5863\Project2\Module2\SF2MakerDemo\designer\MakerDemo\MakerDemo_fp\MakerDemo.pro}
enable_device -name {M2S010} -enable 1
set_programming_file -name {M2S010} -file {C:\ECEN5863\Project2\Module2\SF2MakerDemo\designer\MakerDemo\MakerDemo.ppd}
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
save_project
close_project
