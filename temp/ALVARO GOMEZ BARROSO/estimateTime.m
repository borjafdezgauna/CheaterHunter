%Esta función 
function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
a=toMeters( kms );
b=toMetersPerSecond( speedKmH );
x=linspace(a(1),a(length(a)),numSlices);
dist=x(3)-x(2);
estimatedTime=0;

for mix=1:length(x)
    y=interpolateLinearly( a, b, mix*dist);
    tiempotramo=dist/y;
    estimatedTime=estimatedTime+tiempotramo;
end
end