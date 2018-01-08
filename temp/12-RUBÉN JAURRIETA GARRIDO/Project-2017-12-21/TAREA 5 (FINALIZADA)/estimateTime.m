function estimatedTime=estimateTime(kms,speedKmH,numSlices)
m=toMeters(kms);
speedMS=toMetersPerSecond(speedKmH);
z=m(1);
v=m(end);
w=(v-z)/numSlices;
a=(w:w:v);
for i=1:numSlices
b(i)=interpolateLinearly(m,speedMS,a(i)) ;
end
tiempo=w./b;
estimatedTime=sum(tiempo);
end
