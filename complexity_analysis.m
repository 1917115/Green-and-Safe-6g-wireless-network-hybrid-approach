%% complexity_analysis.m

config

active = 50 + DISTANCE*0.20;
thermal = 42 + DISTANCE*0.14;
hybrid = 36 + DISTANCE*0.08;
vlc = 32 + DISTANCE*0.05;

figure

plot(DISTANCE,active,'-r','LineWidth',2)
hold on
plot(DISTANCE,thermal,'-m','LineWidth',2)
plot(DISTANCE,hybrid,'-g','LineWidth',2)
plot(DISTANCE,vlc,'-b','LineWidth',2)

xlabel('Distance (m)')
ylabel('Complexity (%)')
title('Complexity Comparison')

legend('RF Active Mode','Thermal Mode','Hybrid RF-VLC','Pure VLC')
grid on

saveas(gcf,'results/Complexity.png')
