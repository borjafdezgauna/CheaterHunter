function [estimatedTime] = estimateTime(kms,speedKmH,numSlices)
% Esta función recibe un vector con la velocidad del vehículo (speedKmH)
% en diferentes puntos (kms) y el 
% número de pasos de integración (numSlices)
partes=linspace(kms(1), kms(length(kms)),numSlices);
estimatedTime=0;
d=round(partes(2)-partes(1),4);
for i=1:length(partes);
    v=interpolateLinearly(kms, speedKmH,partes(i));
    t=kmam(d)/MetrosSegundo(v);
    estimatedTime=estimatedTime+t;
end
end