%We pass to meters and second although we finally pass it to kilometers
%again, and then we calculate the speed and the speedLimit by using the to
%interpolate functions and the sum the kilometers above speed to have the
%total distance
function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] =checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
SlicesAboveLimit=0;
m=toMeters(driverLogKm);
t=toMetersPerSecond(driverLogSpeed);
m1=toMeters(limitKms);
t1=toMetersPerSecond(limitSpeeds);
for i=1:numSlices
    SliceDistance=m(end)/numSlices;
    point= SliceDistance*i;
    speed= interpolateLinearly(m,t,point);
    SpeedLimit=interpolateToTheLeft(m1,t1,point);
     if speed>SpeedLimit
     SlicesAboveLimit= SlicesAboveLimit+1;
     
     end
end
kmsAboveSpeedLimit=(SlicesAboveLimit*SliceDistance)/1000;
percentAboveSpeedLimit=kmsAboveSpeedLimit*100/m(end);
end

            
    
        
        

    
    