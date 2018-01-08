function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices);
 %% Tarte bakoitzaren distantzia eta kilometro guztien bektore bat kalkulatu dugu 
  dx=kms(length(kms))/numSlices;
  kilometroak=linspace(kms(1),kms(length(kms)), numSlices);
  estimatedTime=0;
for i=1:(length(kilometroak));
   %% Interpolatuko dugu, kilometro bakoitzean zer abiadura duen kalkulatzeko
interpolatedspeedKmH=interpolateLinearly(kms,speedKmH,kilometroak(i));
%% Denbora kalkulatzeko, distantzia zati interpolatutako abiadura kalkulatuko dugu
if interpolatedspeedKmH~=0
estimatedTime=(dx/interpolatedspeedKmH)+estimatedTime;
end
  end
   %% Orduetan kalkulatu dugunez, segunduetara pasatuko dugu
  estimatedTime=estimatedTime*3600;
  end