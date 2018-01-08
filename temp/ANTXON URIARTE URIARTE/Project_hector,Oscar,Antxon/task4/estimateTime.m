%We use the previous functions(toMeters, toMetersPerSecond)to pass to meters and seconds and by using interpolateLinearly to calculate the pieces and by suming all them we calculate the estimated time, that is very accurate
function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
m=toMeters(kms);
t=toMetersPerSecond(speedKmH);
time=0;
for i=1:numSlices
    SliceDistance=m(end)/numSlices;
    point= SliceDistance*i;
    speed= interpolateLinearly(m,t,point);
    SliceTime= SliceDistance/speed;
    time=time+SliceTime;
end
estimatedTime= time;
end