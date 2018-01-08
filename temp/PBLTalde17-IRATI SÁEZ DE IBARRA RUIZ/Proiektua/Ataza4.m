clear
clc
close
%Fitxategiak irakurri.
for ibilbidea={'n1','a1'};
  for gidaria={'driver1','driver2'};
    fitxategia=sprintf('%s-%s-log.csv',ibilbidea{1},gidaria{1});
    log=dlmread(fitxategia,',');
    %Datuak funtzioan sartu.
    denbora=estimateTime(log(:,1),log(:,2),10000);
    hms=toHMS(denbora);
    %Balioak pantailaratu.
    fprintf('%s-(r)en denbora estimazioa %s ibilbidean: %s\n',gidaria{1},ibilbidea{1},hms);
  end
end