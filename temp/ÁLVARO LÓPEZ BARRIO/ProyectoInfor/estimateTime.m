%This functiom estimates the time taken in a route
%This function is given a vector with a vehicle’s speed (speedKmH) at
%different points (kms) and the number of integration slices we want to
%use (numSlices)
function [ estimatedTime ] = estimateTime(kms, speedKmH, numSlices)
  estimatedTime=0;
  m=toMeters(kms);%km-->m
  msSpeed=toMetersPerSecond(speedKmH);%km/h-->m/s
  totDistance=m(1,end);%Takes the last value from m which is the total distance
  delta_m=totDistance/numSlices;%We calculate the increment in m

  for i=1:numSlices
    km=(i-1)*delta_m;
    interpolatedSpeed=interpolateLinearly(m, msSpeed, km);%We calculate the interpolated y values for the given x
    if interpolatedSpeed==0
        estimatedTime=0;
    else
        estimatedTime=estimatedTime+delta_m/interpolatedSpeed;
    end
  end
  sprintf('%0.3f',estimatedTime);  
end