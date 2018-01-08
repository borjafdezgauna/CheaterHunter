
function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices) 
estimatedTime=0;
slicentamainua=kms(end)/numSlices;
zeinkmden=linspace(0,kms(end),numSlices);
for i=zeinkmden
v=interpolateLinearly(kms,speedKmH,i);
if v==0
   denbora=0;
else
    denbora=slicentamainua/v;
end
estimatedTime = estimatedTime + denbora;
end
estimatedTime=estimatedTime*3600;
end
