clear
numSlices=10000;
for road={'n1','a1'};
   for driver=1:2 ;
   driver_name=sprintf('%s-driver%d-log.csv',road{1},driver);
   driver_data=dlmread(driver_name,',');
   speedKmH=driver_data(:,2);
   kms=driver_data(:,1);
   
   estimatedTime=estimateTime( kms, speedKmH, numSlices);
   HMS=toHMS( estimatedTime );
   fprintf('Estimated time for driver: %d in route %s is: %s \n', driver,road{1},HMS)

end
end
