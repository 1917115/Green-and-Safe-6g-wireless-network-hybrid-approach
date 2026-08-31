%% energy_efficiency.m

config

vlcRate = 100 - 0.5*(DISTANCE-10);
wifiRate = 40 - 0.18*(DISTANCE-10);

hybridRate = 0.7*vlcRate + 0.3*wifiRate;

vlcEE = vlcRate / VLC_POWER;
wifiEE = wifiRate / RF_POWER;
hybridEE = hybridRate / 11.5;

figure
plot(DISTANCE,vlcEE,'-ob','LineWidth',2)
hold on
plot(DISTANCE,wifiEE,'-sr','LineWidth',2)
plot(DISTANCE,hybridEE,'-^g','LineWidth',2)

xlabel('Distance (m)')
ylabel('Energy Efficiency (Mbps/W)')
title('Energy Efficiency vs Distance')
legend('VLC','WiFi','Hybrid')
grid on

saveas(gcf,'results/Energy_Efficiency.png')
