function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
m=tometers(kms);
speedMS=toMetersPerSecond(speedKmH);
lengthslices=(m(length(m))-m(1))/numSlices;
a=[];
b=[];
for i=1:numSlices
a(i)=interpolateLinearly(m,speedMS,(i)*lengthslices);
b(i)=lengthslices/a(i);
i=i+1;
end
estimatedTime=sum(b);
end
