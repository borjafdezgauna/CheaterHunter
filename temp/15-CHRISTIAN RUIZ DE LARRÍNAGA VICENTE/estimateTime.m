function [estimatedTime] = estimateTime(kms,speedKmH,numSlices)
% Esta funci�n recibe un vector con la velocidad del veh�culo (speedKmH)
% en diferentes puntos (kms) y el 
% n�mero de pasos de integraci�n (numSlices)
partes=linspace(kms(1), kms(length(kms)),numSlices);
estimatedTime=0;
d=round(partes(2)-partes(1),4);
for i=1:length(partes);
    v=interpolateLinearly(kms, speedKmH,partes(i));
    t=kmam(d)/MetrosSegundo(v);
    estimatedTime=estimatedTime+t;
end
end