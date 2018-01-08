clear
numSlices=10000;
for road={'n1','a1'};
   for driver=1:2 ;
   driver_name=sprintf('%s-driver%d-log.csv',road{1},driver);
   driver_data=dlmread(driver_name,',');
   driverLogKm=driver_data(:,1);
   driverLogSpeed=driver_data(:,2);
   limit_name=sprintf('%s-speed-limit.csv',road{1});
   limit_data=dlmread(limit_name,';');
   limitKms=limit_data(:,1);
   limitSpeeds=limit_data(:,2);
   [ kmsAboveSpeedLimit,percentAboveSpeedLimit ]= checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices);
   %infration risk
     if percentAboveSpeedLimit==0
       fprintf('Analyzing: Driver=driver%d, Route=%s \n No risk of infraction \n \n',driver,road{1})
   elseif percentAboveSpeedLimit>0 && percentAboveSpeedLimit<10
       infration_risk=sprintf('Mild infration risk');
       fprintf('Analyzing: Driver=driver%d, Route=%s \n %s: Kms above speed limit = %.2f (%.2f of the route) \n \n',driver,road{1},infration_risk,kmsAboveSpeedLimit,percentAboveSpeedLimit)
   else
        infration_risk=sprintf('HIGH INFRATION RISK');
        fprintf('Analyzing: Driver=driver%d, Route=%s \n %s: Kms above speed limit = %.2f (%.2f of the route) \n \n',driver,road{1},infration_risk,kmsAboveSpeedLimit,percentAboveSpeedLimit)
   end
   end
end
