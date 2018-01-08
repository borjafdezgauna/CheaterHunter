clear
numSlices=10000;
for road={'n1','a1'};
   for driver=1:2 ;
   driver_name=sprintf('%s-driver%d-log.csv',road{1},driver);
   driver_data=dlmread(driver_name,',');
   logKms=driver_data(:,1);
   logSpeeds=driver_data(:,2);
   route_name=sprintf('%s-height.csv',road{1});
   route_data=dlmread(route_name,',',1,0);
   routeKms=route_data(:,4);
   routeHeights=route_data(:,3);
   fuel=calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices );
   fprintf('Analyzing: Driver= driver%d, Route=%s \n  Estimated fuel consumption:%.2f liters of fuel \n \n',driver,road{1},fuel)
   end
end
