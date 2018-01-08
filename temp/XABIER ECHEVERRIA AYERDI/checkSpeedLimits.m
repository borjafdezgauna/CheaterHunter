function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
p=1;
limitVector=[];
speedVector=[];
diff=max(driverLogKm)/numSlices;
for slice = linspace(min(driverLogKm),max(driverLogKm),numSlices)
    
    speedVector(p)=interpolateLinearly(driverLogKm,driverLogSpeed,slice);
    
    limitVector(p)=interpolateToTheLeft( limitKms, limitSpeeds , slice);
    p=p+1;
end
aboveSpeedLimit=speedVector>limitVector;

kmsAboveSpeedLimit=sum(aboveSpeedLimit)*diff;
percentAboveSpeedLimit= (kmsAboveSpeedLimit/max(driverLogKm))*100;
end
