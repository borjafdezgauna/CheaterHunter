function[ estimatedTime ] = estimateTime(kms,speedKmH,numSlices)

estimatedTime= 0;
delta_t=kms(end)/numSlices;
for i=1:numSlices
    x=(i-1)*delta_t;
    abiadura= interpolateLinearly(kms,speedKmH,x);
    if abiadura==0 
        t=0;
    else
     t = delta_t/abiadura;
    end
     estimatedTime=estimatedTime+t*3600;
   
end
end
