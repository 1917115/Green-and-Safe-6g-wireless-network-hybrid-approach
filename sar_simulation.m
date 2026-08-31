%% sar_simulation.m

depth = linspace(0.05,3,40);

wifiSAR = 1.8*exp(-depth/1.4);
vlcSAR = 0.65*exp(-depth/1.7);
hybridSAR = 0.75*exp(-depth/1.5);

figure

plot(depth,wifiSAR,'-r','LineWidth',2)
hold on
plot(depth,vlcSAR,'-b','LineWidth',2)
plot(depth,hybridSAR,'-g','LineWidth',2)

xlabel('Skin Depth (mm)')
ylabel('SAR (W/kg)')
title('SAR vs Skin Depth')

legend('WiFi','VLC','Hybrid')
grid on

saveas(gcf,'results/SAR.png')
