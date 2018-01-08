clear
clc
close
bidea='n1';
kolorea='b';
%Fitxategiak irakurri.
for fitxategia={'n1-height.csv','a1-height.csv'};
  ibilbidea=dlmread(fitxategia{1},',',1,0);
  %Datuak ploteatu.
  subplot(1,2,1);
  plot(ibilbidea(:,4),ibilbidea(:,3),kolorea);
  hold on
  title('Distantzia-Altuera grafikoa');
  xlabel('Distantzia(Km)');
  ylabel('Altuera(m)');
  subplot(1,2,2);
  plot(ibilbidea(:,1),ibilbidea(:,2),kolorea);
  hold on
  title('Latitude-Longitude grafikoa');
  xlabel('Latitudea');
  ylabel('Longitudea');
  %Balioak kalkulatu fprintf-an erabili ahal izateko.
  minimoa=min(ibilbidea(:,3));
  maximoa=max(ibilbidea(:,3));
  desbiderazioa=std(ibilbidea(:,3));
  batezbestekoa=sum(ibilbidea(:,3))/length(ibilbidea(:,3));
  %Datuak pantailaratu.
  fprintf('%s ibilbidearen datuak:\n Batez-besteko altuera: %.2f  (sd: %.2f)\n Altuera tartea: [%.2f , %.2f]\n \n',bidea,batezbestekoa,desbiderazioa,minimoa,maximoa);
  bidea='a1';
  kolorea='r';
end
subplot(1,2,1);
legend('n1','a1');
subplot(1,2,2);
legend('n1','a1');
%Grafikoa png moduan gorde.
saveas(gcf,'route-elevations','png');