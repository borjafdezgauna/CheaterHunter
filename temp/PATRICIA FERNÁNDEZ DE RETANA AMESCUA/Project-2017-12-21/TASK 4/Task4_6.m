
numSlices=1000;
    v=[];
    w=[];
    i=1;
for files1={'a1','n1'}
for files2= 1:2
 %(km, speedKmH,numSlices)
 filename=sprintf('%s-driver%d-log.csv', files1{1}, files2(1));
    data=dlmread(filename,',');
    speed=data(:,2);
    distanceorigin=data(:,1);
    speedKmH=[v speed];
    km=[w distanceorigin];
%end

   m = toMeters(km);
   
   msSpeed = toMetersperSecond(speedKmH);
   
   estimatedTime = estimateTime( m, msSpeed, numSlices);
    
   hms  = toHMS(estimatedTime); 
   
   variable=   sprintf('Estimated time for driver %d in route %s: %s',files2,files1{1},hms);
   disp(variable);
   end
end
      
 

