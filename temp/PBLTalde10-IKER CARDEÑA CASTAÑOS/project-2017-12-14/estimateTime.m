function [ emaitza ] = estimateTime( kms, speedKmH, numSlices);
denbora=0;
for i=1:numSlices;
  tarteluzeera=kms(end)/numSlices;
  puntukm=tarteluzeera*i;
  abiadura= interpol(kms,speedKmH,puntukm); 
  tartedenbora=tarteluzeera/abiadura;
  denbora=denbora+tartedenbora;
end
     emaitza=denbora*3600;
end