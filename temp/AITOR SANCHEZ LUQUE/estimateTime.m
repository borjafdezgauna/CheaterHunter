function [estimatedTime] = estimateTime(kms, speedKmH, numSlices) 
totalTime=0;
%Here we calculate the last value
lvalue = kms(length(kms));
%Whith the last value we make slices according to the number of them that we want
slices = linspace(0,lvalue,numSlices);
%We calculate the time for every sliceand sum it.
for slice=slices;
%The interlolateLinearly is needed to calculate the slope of the speed in a slice 
%to then calculate the time 
  speed=interpolateLinearly(kms,speedKmH,slice);
  if speed == 0
  time=0;
  else
  time=slices(2)/speed;
  end
  totalTime = totalTime+time;
end
%This it to change the unity from hours to seconds 
estimatedTime = totalTime*3600;

end