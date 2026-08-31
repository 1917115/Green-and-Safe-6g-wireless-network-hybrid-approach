%% power_density.m

depth = linspace(0.05,3,40);

incidentWiFi = 8*exp(-depth);
incidentVLC = 4*exp(-depth/1.5);

absorbedWiFi = 6*exp(-depth/1.1);
absorbedVLC = 3*exp(-depth/1.4);

figure

plot(depth,incidentWiFi,'-r','LineWidth',2)
hold on
plot(depth,incidentVLC,'-b','LineWidth',2)
plot(depth,absorbedWiFi,'--r','LineWidth',2)
plot(depth,absorbedVLC,'--b','LineWidth',2)

xlabel('Skin Depth (mm)')
ylabel('Power Density (W/m^2)')
title('Incident and Absorbed Power Density')

legend('Incident WiFi','Incident VLC',...
       'Absorbed WiFi','Absorbed VLC')

grid on

saveas(gcf,'results/Power_Density.png')
