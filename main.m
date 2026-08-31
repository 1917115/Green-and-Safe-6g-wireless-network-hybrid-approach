%% main.m

clc
clear
close all

if ~exist('results','dir')
    mkdir('results')
end

disp('Running Hybrid RF-VLC Simulation...')

run('sinr_simulation.m')
run('energy_efficiency.m')
run('battery_lifetime.m')
run('sar_simulation.m')
run('complexity_analysis.m')
run('power_density.m')

disp('--------------------------------------')
disp('All IEEE Simulation Results Generated.')
disp('Graphs Saved Inside RESULTS Folder.')
disp('--------------------------------------')
