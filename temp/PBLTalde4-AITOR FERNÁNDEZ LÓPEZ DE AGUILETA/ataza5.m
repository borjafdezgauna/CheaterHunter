%% Errepideen fitxategietako datu guztiak jaso %%
for Errepide_Izena= {'n1', 'a1'}
  
  for gidaria= 1:2
    fitxategia_abiadura = sprintf('%s-speed-limit.csv',Errepide_Izena{1});
fitxategia= sprintf ('%s-driver%d-log.csv',Errepide_Izena{1},gidaria);
Gidariak_info=dlmread(fitxategia,',');
Abiadurak_info=dlmread(fitxategia_abiadura,';');
numSlices = 10000;
driverLogKm = Gidariak_info(:,1);
driverLogSpeed=Gidariak_info(:,2);
limitKms=Abiadurak_info(:,1);
limitSpeeds=Abiadurak_info(:,2);
%% Funtzioari deitu %%
[ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits (driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices);
%% Limitetik kanpo ibilitako km-en arabera katalogatu mezua %%
if percentAboveSpeedLimit >= 10
  Arriskua= 'HIGH INFRACTION RISK' ;
fprintf ('Analyzing:  Driver=driver%d  Route=%s \n %s:Kms above the speed limit=%.2f  (%.2f %% of the rute) \n\n',gidaria, Errepide_Izena{1},Arriskua,kmsAboveSpeedLimit,percentAboveSpeedLimit);
end
if percentAboveSpeedLimit <= 10 && percentAboveSpeedLimit >0;
Arriskua =' Mild infraction risk';
fprintf ('Analyzing:  Driver=driver%d  Route=%s \n %s:Kms above the speed limit=%.2f  (%.2f %% of the rute) \n\n',gidaria, Errepide_Izena{1},Arriskua,kmsAboveSpeedLimit,percentAboveSpeedLimit);
end
if percentAboveSpeedLimit == 0;
  fprintf ('Analyzing:  Driver=driver%d  Route=%s \n No infraction risk \n\n',gidaria, Errepide_Izena{1});
end
end
end
input('Sakatu edozein tekla jarraitzeko','s');
mainMenu
