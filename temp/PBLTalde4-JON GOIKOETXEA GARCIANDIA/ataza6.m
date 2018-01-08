%% Errepideen fitxategietako datu guztiak jaso %%
for Errepide_Izena= {'n1', 'a1'}
  
  for gidaria= 1:2
    fitxategiagidariak= sprintf ('%s-driver%d-log.csv',Errepide_Izena{1},gidaria);
    fitxategiaerrepidea=sprintf('%s-height.csv',Errepide_Izena{1});
Gidariak_info=dlmread(fitxategiagidariak,',');
Errepideak_info=dlmread(fitxategiaerrepidea,',',1,0);
numSlices = 1000;
driverLogKm = Gidariak_info(:,1);
driverLogSpeed=Gidariak_info(:,2);
routeKms=Errepideak_info(:,4);
routeHeights=Errepideak_info(:,3);
[ fuelExpendituretotal ] =calculateRouteFuelExpenditure(routeKms,routeHeights,driverLogKm,driverLogSpeed,numSlices );
fprintf ('Analyzing:  Driver=driver%d  Route=%s \n Estimated fuel consumption: %.6f liters of fuel\n\n',gidaria, Errepide_Izena{1},fuelExpendituretotal);
end
end
input('Sakatu edozein tekla jarraitzeko','s');
mainMenu