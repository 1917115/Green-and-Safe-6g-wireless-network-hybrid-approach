%% battery_lifetime.m

config

vlcCurrent = 420 + DISTANCE*1.3;
wifiCurrent = 550 + DISTANCE*1.8;
hybridCurrent = 470 + DISTANCE*1.4;

vlcLife = BATTERY_CAPACITY*0.70 ./ vlcCurrent;
wifiLife = BATTERY_CAPACITY*0.70 ./ wifiCurrent;
hybridLife = BATTERY_CAPACITY*0.70 ./ hybridCurrent;

figure

plot(DISTANCE,vlcLife,'-ob','LineWidth',2)
hold on
plot(DISTANCE,wifiLife,'-sr','LineWidth',2)
plot(DISTANCE,hybridLife,'-^g','LineWidth',2)

xlabel('Distance (m)')
ylabel('Battery Lifetime (Hours)')
title('Battery Lifetime vs Distance')

legend('VLC','WiFi','Hybrid')
grid on

saveas(gcf,'results/Battery_Lifetime.png')
