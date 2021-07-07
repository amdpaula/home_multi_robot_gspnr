clc
clear

%load("robotcup_executable.mat");
load("robocup_executable_real_rates.mat")

executable_homeModel.add_robots(["robot_1", "robot_2"], ["BS_B2", "BS_B2"]);
executable_homeModel.set_marking(executable_homeModel.initial_marking);
executable_homeModel.create_ros_interface_package(true)

disp("Build temp_interface package and launch ros packages")
pause()
disp("Press any key...")

results = executable_homeModel.start_execution();