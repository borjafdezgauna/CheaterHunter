function [ estimatedTime ] = estimateTime ( kms, speedKmH, numSlices )
time=0;
%km to meters
meters=toMeters (kms); 
%KmH to ms
speed= toMetersPerSecond ( speedKmH );
%speedKmH -> msSpeed
for i=1:numSlices
   part= meters(end)/numSlices;
   point=part*i;
   speedms=interpolateLinearly(meters,speed,point);
   timepiece=part/speedms;
  time= time + timepiece;
end
estimatedTime = time;

end

 