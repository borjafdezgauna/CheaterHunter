
for file={'n1','a1'}
    filename= sprintf ('%s-height.csv',file{1});
    data=dlmread(filename,',',1,0);
    hold on
    subplot(1,2,2)
plot(data(:,3),data(:,4),'c');
xlabel ('distantzia')
ylabel('altitudea')
title('Distantzia-Altitudea')
hold on
subplot(1,2,1)
plot(data(:,1), data(:,2),'m');
xlabel('latitudea')
ylabel('longitudea')
title('Latitudea-Longitudea')
elebazioaren_media=mean(data(:,3))
desbiderazio_estandarra= std(data(:,3))
maximoa=max(data(:,3))
minimoa=min(data(:,3))
saveas(gcf,'route-elevations.png')
end
