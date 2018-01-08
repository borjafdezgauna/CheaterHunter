function [estimatedTime]=estimateTime(kms, speedKmH,numSlices)
  t=0;
  for i=1:numSlices;
    luzeeratartea=kms(length(kms))/numSlices;
    kmtartea=luzeeratartea*i;
    abiadura=interpolateLinearly(kms,speedKmH,kmtartea);
    denboratartea=luzeeratartea/abiadura;
    t=t+denboratartea;
    end
    estimatedTime=t*3600;
    end