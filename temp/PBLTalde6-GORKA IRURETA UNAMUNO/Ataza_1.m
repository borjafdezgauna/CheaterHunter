for route={'n1','a1'}
  %% Fitxategiaren izena aldagaia batean gorde eta irakurri
filename=sprintf('%s-height.csv',route{1});  
fitxategia=dlmread(filename,',',1,0);
  %% Subplot batkoitzeak grafikoa kargatu eta datuak adierazi
subplot(1,2,1);
hold on
plot(fitxategia(:,4),fitxategia(:,3));
xlabel('Distantzia(km)');
ylabel('Altuera(m)');
title('Altuera jatorriarekiko');
subplot(1,2,2);
hold on
plot(fitxategia(:,1),fitxategia(:,2));
xlabel('Latitudea(º)');
ylabel('Longitudea(º)');
title('Koordenatuak');
  %% Ibilbidearen ezaugarri batzuk kalkulatu
Batazbestekoa=mean(fitxategia(:,3));
Desbiderazioa=std(fitxategia(:,3));
Altueramaximoa=max(fitxategia(:,3));
Altueraminimoa=min(fitxategia(:,3));
  %% Aurretik kalkulatutko datuak, erabiltzaileak modu erraz batean ikus dezan testu batean
fprintf('%s route statistics:\nMean Height: %.2f (sd: %.2f)\nHeight Range:[%.2f, %.2f]\n\n\n ',route{1},Batazbestekoa,Desbiderazioa,Altueraminimoa,Altueramaximoa);
end
  %% Subplot bakoitzean falta diren datuak izendatu
subplot(1,2,1);
legend('n1','a1');
subplot(1,2,2);
legend('n1','a1');
   %% Plot-ak png formatuan gorde
saveas(gcf,'RouteElevation.png');
input('Sakatu edozein tekla jarraitzeko: ','s');