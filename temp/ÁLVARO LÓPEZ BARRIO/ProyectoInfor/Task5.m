%Write a script that analyzes how much time each driver drove over the speed
%limit in each route.
clc
clear
for road = ['n' 'a']
    filename2=sprintf('%s1-speed-limit.csv',road);
    road_speed_limit=dlmread(filename2,';');
    limit_km=road_speed_limit(:,1);
    limit_speed=road_speed_limit(:,2);
    for driver = 1:2 %Define driver variable
        filename1=sprintf('%s1-driver%d-log.csv', road, driver);
        driver_kmh=dlmread(filename1,','); %Load files
        Distance=driver_kmh(:,1);%Define Distance 1 as a 1 column matrix
        Speed=driver_kmh(:,2);%Define Speed 1 as a 1 column matrix
        [kmsAboveSpeedLimit,percentAboveSpeedLimit]=checkSpeedLimits(Distance,Speed,limit_km,limit_speed,1000);
        if percentAboveSpeedLimit >= 10
           infractionRisk='HIGH INFRACTION RISK'; 
        elseif percentAboveSpeedLimit<10 && percentAboveSpeedLimit>0
           infractionRisk='Mild infraction risk';
        else 
           infractionRisk='No risk of infraction';
        end
        if percentAboveSpeedLimit>0
        fprintf('Analyzing: Driver= driver%d, Route= %s1\n%s: Kms above the speed limit= %0.2f(%0.2f% of \nthe route)\n',driver,road,infractionRisk,kmsAboveSpeedLimit,percentAboveSpeedLimit);
        else
        fprintf('Analyzing: Driver= driver%d, Route= %s1\n%s\n',driver,road,infractionRisk);    
        end    
    end
end