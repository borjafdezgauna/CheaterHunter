leters={'a1','n1'};
drivers={'driver1','driver2'};
numSlices=1000;
%This for is used to calculate all the different values we need by changing
%the files we get the information from with each loop.
for x=[1,2]
  %This part of the script creates the names of the files to load then
  %and extract their information.  
  filenamelimit = sprintf('%s-speed-limit.csv',leters{x});
  limits = dlmread (filenamelimit,'');
  limitKms=limits(:,1);
  limitSpeeds=limits(:,2);
  for y=[1,2]
  filenamedriver=sprintf('%s-%s-log.csv',leters{x},drivers{y});
  distancespeed=dlmread(filenamedriver, ',');
  driverLogKm=distancespeed(:,1);
  driverLogSpeed=distancespeed(:,2);
  %Here we make use of the function checkSpeedLimits to calculate
  %kmsAboveSpeedLimit and percentAboveSpeedLimit
 [kmsAboveSpeedLimit,percentAboveSpeedLimit] =checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices) ;
  fprintf('Analyzing: Driver= %s, Route= %s \n',drivers{y},leters{x})
  %Once we have the results we print them according to the result itshelf
  if percentAboveSpeedLimit > 10
    disp('HIGH INFRACTION RISK: Kms above the speed limit=')
    fprintf('%f (%.02f%% of the route)\n',kmsAboveSpeedLimit,percentAboveSpeedLimit)
  elseif percentAboveSpeedLimit > 0
    disp('Mild infraction risk: Kms above the speed limit=')
    fprintf('%f (%.02f%% of the route)\n',kmsAboveSpeedLimit,percentAboveSpeedLimit)
  else 
    disp("No risk of infraction")
  end
  end
end