for route={'n1','a1'};
  for number=1:2;
     %% Fitxategiaren izena aldagaia batean gorde eta irakurri
    filename=sprintf('%s-driver%d-log.csv',route{1},number); 
    fitxategia=dlmread(filename,',');
     %% EstimatedTime funtzioa erabiliko dugu driver bakoitz zenbat denbora behar izan duen bide egiteko
     estimatedTime  = estimateTime( fitxategia(:,1), fitxategia(:,2), 10000);
 hms=toHMS(estimatedTime);
 %% Aurretik kalkulatutko datuak, erabiltzaileak modu erraz batean ikus dezan testu batean
 fprintf('Estimated time for driver%d in route %s: %s\n',number,route{1},hms);
  end
end
input('Sakatu edozein tekla jarraitzeko: ','s');