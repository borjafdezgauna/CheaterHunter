clear
clc
close
%Fitxategiak irakurri.
for ibilbidea={'n1','a1'};
  kolorea='b';
  for gidaria={'driver1','driver2'};
    fitxategia=sprintf('%s-%s-log.csv',ibilbidea{1},gidaria{1});
    log=dlmread(fitxategia,',');
    %Datuak ploteatu.
    if ibilbidea{1}=='n1';
      subplot(2,1,1);
      plot(log(:,1),log(:,2),kolorea);
      hold on
      title('n1 ibilbidea');
      xlabel('Distantzia(Km)');
      ylabel('Abiadura(Km/h)');
    else
      subplot(2,1,2);
      plot(log(:,1),log(:,2),kolorea);
      hold on
      title('a1 ibilbidea');
      xlabel('Distantzia(Km)');
      ylabel('Abiadura(Km/h)');
    end
    %Balioak kalkulatu.
    minimoa=min(log(:,2));
    maximoa=max(log(:,2));
    desbiderazioa=std(log(:,2));
    batezbestekoa=sum(log(:,2))/length(log(:,2));
    %Balioak pantailaratu.
    fprintf('%s-(r)en datuak %s ibilbidean:\n Batez-besteko abiadura: %.2f  (sd: %.2f)\n Abiadura Min-Max: [%.2f,%.2f]\n\n',gidaria{1},ibilbidea{1},batezbestekoa,desbiderazioa,minimoa,maximoa);
    kolorea='r';
  end
end
subplot(2,1,1);
legend('1 gidaria','2 gidaria');
subplot(2,1,2);
legend('1 gidaria','2 gidaria');