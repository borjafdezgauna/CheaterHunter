function [estimatedTime] = estimateTime (kms, speedKmH, numSlices)
  %%posizio eta denbora bektoreak sortu, behar dugun tamainarekin eta zeroz osatuta%%
  estimatedTimeVector=zeros(1,numSlices);
  pos=zeros(1,numSlices);
  %%X ardatzean distantzia eta Y ardatzean abiadura ipini%%
  [yVector] = toMetersPerSecond (speedKmH);
  [xVector]= ToMeters (kms);
  %%posizio bektorearen elementu bakoitzetik bestera dauden kilometroak kalkulatu%%
  diff=ToMeters(kms(length(kms))/numSlices);
  %%posizio eta denbora bektoreen elementuak kalkulatu%%
  
  
  for step= 1: numSlices
    pos(step)=diff*step;
    x= pos(step);
    [interpolatedY] = interpolateLinearly (xVector, yVector, x);
    %%Aurreko posizio elementutik hurrengora joateko behar izan duen denbora kalkulatu%%
    estimatedTimeVector(step)= diff/interpolatedY;
    end
    %%denbora bektorearen elementuak batu, behar izan duen denbora totala kalkulatzeko%%
estimatedTime=sum(estimatedTimeVector);
end