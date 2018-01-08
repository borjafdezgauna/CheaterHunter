for number=1:2;
  for route={'n1','a1'};
     %% Fitxategiaren izena aldagaia batean gorde eta irakurri
    fileheight=sprintf('%s-height.csv',route{1});
    altuera=dlmread(fileheight,',');
    filespeed=sprintf('%s-driver%d-log.csv',route{1},number);
    abiadura=dlmread(filespeed,',');
    %% Funtzio horrekin zenbat gasolina erabiltzen duen kalkulatzen du
[fuelExpenditure]=calculateRouteFuelExpenditure (abiadura(:,1),abiadura(:,2),altuera(:,4),altuera(:,3),1000);
%% Aurretik kalkulatutko datuak, erabiltzaileak modu erraz batean ikus dezan testu batean
fprintf('Analyzing: Driver= driver%d, Route=%s\nEstimated fuel cunsumption: %f liters of fuel\n\n',number,route{1},fuelExpenditure);
end
end
input('Sakatu edozein tekla jarraitzeko: ','s');