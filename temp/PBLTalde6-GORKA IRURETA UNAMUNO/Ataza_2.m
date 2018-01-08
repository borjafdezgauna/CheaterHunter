 for driver=1:2
 posizioa=1;
  for route={'n1','a1'}
filename=sprintf('%s-driver%d-log.csv',route{1},driver);  
fitxategia=dlmread(filename,',');
 %% Subplot bakoitzeko grafikoa kargatu eta datuak adierazi
subplot(1,2,posizioa);
hold on
plot(fitxategia(:,1),fitxategia(:,2));
xlabel('Distantzia(km)');
ylabel('Abiadura(km/h)');
title('Abiadura jatorrarekiko');
posizioa=posizioa+1;
%% Ibilbidearen ezaugarri batzuk kalkulatu
maxspeed=max(fitxategia(:,2)); 
minspeed=min(fitxategia(:,2));
meanspeed=mean(fitxategia(:,2));
standardspeed=std(fitxategia(:,2));
%% Aurretik kalkulatutko datuak, erabiltzaileak modu erraz batean ikus dezan testu batean
fprintf('driver%d statistics in route %s\nMean speed: %.2f km/h (sd. %.2f)\nMin-Max Speed: [%.2f, %.2f]\n\n',driver,route{1},meanspeed,standardspeed,minspeed,maxspeed);
  end
end
 %% Subplot bakoitzean falta diren datuak izendatu
subplot(1,2,1);
legend('driver1','driver2');
subplot(1,2,2);
legend('driver1','driver2');
input('Sakatu edozein tekla jarraitzeko: ','s');