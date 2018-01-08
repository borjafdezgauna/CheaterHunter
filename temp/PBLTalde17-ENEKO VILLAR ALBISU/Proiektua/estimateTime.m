function [estimatedTime] = estimateTime(kms,speedKmH,numSlices)
%This function is given a vector with a vehicle’s speed (speedKmH) at
%different points (kms) and the number of integration slices we want to
%use (numSlices)
 interpolatedV=[];
 %Interpolatutako abiadura kalkulatu.
 for tartea=linspace(kms(1),kms(end),numSlices)
   V=interpolateLinearly(kms,speedKmH,tartea);
   interpolatedV=[interpolatedV V];
 end
 i=1;
 if interpolatedV(i)==0
   i=2;
 end
 %Balioak kalkulatu.
 denbora=(kms(end)/numSlices)./interpolatedV(i:end);
 time=sum(denbora);
 estimatedTime=time*3600;
end