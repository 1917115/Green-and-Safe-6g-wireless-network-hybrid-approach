%% sinr_simulation.m

config

vlcSINR = 25 - 0.28 * DISTANCE;
wifiSINR = 18 - 0.12 * DISTANCE;

hybridSINR = zeros(size(DISTANCE));

for i = 1:length(DISTANCE)

    d = DISTANCE(i);

    if d <= 80
        hybridSINR(i) = 25 - 0.28*d;

    elseif d <=120
        hybridSINR(i) = (25 - 0.28*80) + 5 - 0.1*(d-80);

    else
        hybridSINR(i) = 18 - 0.12*d + 2;
    end

end

figure
plot(DISTANCE,vlcSINR,'-ob','LineWidth',2)
hold on
plot(DISTANCE,wifiSINR,'-sr','LineWidth',2)
plot(DISTANCE,hybridSINR,'-^g','LineWidth',2)

xline(80,'--r','VLC Handover');
xline(120,'--k','RF Switching');

xlabel('Distance (m)')
ylabel('SINR (dB)')
title('SINR vs Distance')
legend('VLC','WiFi','Hybrid RF-VLC')
grid on

saveas(gcf,'results/SINR_vs_Distance.png')
