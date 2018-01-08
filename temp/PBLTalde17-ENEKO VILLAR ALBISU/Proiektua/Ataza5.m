clear
clc
close
%Fitxategiak irakurri.
for ibilbidea={'n1','a1'};
  for gidaria={'driver1','driver2'};
    fitxategia=sprintf('%s-%s-log.csv',ibilbidea{1},gidaria{1});
    abiadurafitxategia=sprintf('%s-speed-limit.csv',ibilbidea{1});
    log=dlmread(fitxategia,',');
    abiaduralimitea=dlmread(abiadurafitxategia,';');
    %Datuak funtzioan sartu.
    [kmsAboveSpeedLimit,percentAboveSpeedLimit] =checkSpeedLimits(log(:,1),log(:,2),abiaduralimitea(:,1),abiaduralimitea(:,2),10000);
    %Datuak pantailaratu.
    if percentAboveSpeedLimit==0
      fprintf('Analizatzen: Gidaria=%s, Ibilbidea=%s\n Ez dago infrakzio arriskurik\n\n',gidaria{1},ibilbidea{1});
    elseif percentAboveSpeedLimit>0 && percentAboveSpeedLimit<10
      fprintf('Analizatzen: Gidaria=%s, Ibilbidea=%s\n Infrakzio arrisku moderatua: Limitearen gainetik ibilitako kilometro kopurua= %.2f (Ibilbidearen %%%.2f)\n\n',gidaria{1},ibilbidea{1},kmsAboveSpeedLimit,percentAboveSpeedLimit);
    elseif percentAboveSpeedLimit>=10
      fprintf('Analizatzen: Gidaria=%s, Ibilbidea=%s\n INFRAKZIO ARRISKU HANDIA: Limitearen gainetik ibilitako kilometro kopurua= %.2f (Ibilbidearen %%%.2f)\n\n',gidaria{1},ibilbidea{1},kmsAboveSpeedLimit,percentAboveSpeedLimit);
    end
  end
end