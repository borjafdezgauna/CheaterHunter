function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)

distance=kms(end)-kms(1);
delta_km=distance/numSlices;
x=linspace(kms(1),kms(end),numSlices);
estimatedTime=0;


for i=x
  estimatedSpeed= interpolateLinearly(kms,speedKmH,i);
  msSpeed= toMetersPerSecond(estimatedSpeed);
  m= toMeters(delta_km);
  if msSpeed==0
    time=0
    else
    time= m/msSpeed;
    end
  estimatedTime= estimatedTime + time;
end
    end