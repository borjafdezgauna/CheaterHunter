function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
m=toMeters( kms );
ms=toMetersPerSecond( speedKmH );
estimatedTime=0;
ds=(max(m)-min(m))/numSlices;
initial=speedKmH(1);
if initial==0
    a=ds;
    numslices=numSlices-1;
else
    a=min(m);
    numslices=numSlices;
end

for i = linspace(a,max(m),numslices)
    interpolatedSpeed=interpolateLinearly( m, ms , i); %This is correct
    dt=ds/interpolatedSpeed;
    estimatedTime=estimatedTime+dt; %Looks correct
    
    
end

end
