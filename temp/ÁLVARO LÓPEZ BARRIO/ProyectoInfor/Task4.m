%Write a script that estimates the time it took to do each of the routes to each of
%the drivers
clc
clear
for road = ['n' 'a']
    for driver = 1:2 %Define driver variable
        filename=sprintf('%s1-driver%d-log.csv', road, driver);
        driver_kmh=dlmread(filename,','); %Load files
        km=driver_kmh(:,1)';
        speed=driver_kmh(:,2)';
        estimatedTime=estimateTime(km,speed,1000);
        time=toHMS(estimatedTime);%Time: hours:minutes:seconds
        fprintf('Estimated time for driver%d in route %s1: %s\n', driver, road, time);
    end
end
      