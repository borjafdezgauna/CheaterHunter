clear
clc
close
%Fitxategiak irakurri.
for ibilbidea={'n1','a1'};
  for gidaria={'driver1','driver2'};
    fitxategia=sprintf('%s-%s-log.csv',ibilbidea{1},gidaria{1});
    fitxategia2=sprintf('%s-height.csv',ibilbidea{1});
    log=dlmread(fitxategia,',');
    bidea=dlmread(fitxategia2,',',1,0);
    %Datuak funtzioan sartu.
    erregaia=calculateRouteFuelExpenditure(bidea(:,4),bidea(:,3),log(:,1),log(:,2),10000);
    fprintf('Analizatzen: Gidaria= %s, Ibilbidea= %s\nEstimatutako erregai kontsumoa: %d litro erregai\n',gidaria{1},ibilbidea{1},erregaia);
  end
end