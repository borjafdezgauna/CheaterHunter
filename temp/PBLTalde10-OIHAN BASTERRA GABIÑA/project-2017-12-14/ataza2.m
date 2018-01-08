for i={'n1-speed-limit.csv','a1-speed-limit.csv'};
    errepideak=dlmread(i{1},',');
    subplot(1,2,1)
plot(errepideak(:,1),errepideak(:,2))
hold on
title('distantzia-abiadura murrizketa')
xlabel('km');
ylabel('km/h');
end