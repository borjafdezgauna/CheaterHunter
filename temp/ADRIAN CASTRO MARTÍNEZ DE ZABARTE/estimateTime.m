function [estimatedTime] = estimateTime(kms, speedKmH, numSlices)
meters=toMeters(kms);
mpsec=toMetersPerSecond(speedKmH);
estimatedTime=0;
dchange=max(meters)/numSlices;

for i= linspace(min(meters),max(meters),numSlices)
   if i~=0
       
    interpolatedSpeed=interpolateLinearly(meters,mpsec,i);
    tchange=dchange/interpolatedSpeed;
    estimatedTime=estimatedTime+tchange;
    
   end
end
end