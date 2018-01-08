%Funtzioa hau sortu dugu kalkulatzeko zenbat denbora behar den
% puntu batetik beste puntu batera abiadura zehatz batekin heltzeko
function  [estimatedTime] = estimateTime( kms, speedKmH, numSlices)
  %%Bide osoa zenbat neurtzen duen jakiteko, kilometroen matrizetik azken elementua hartuko dugu
  luzeera=kms(end);
  %%Bidea "numslices" zatitan banatuko dugu
  slicesluzeera=luzeera/numSlices;
  estimatedTime=0;
  %%Hurrengo eragiketak, zati bakoitzean kalkulatzeko denbora for bat erabili dugu
  for i=1:numSlices
  km=(i-1)*slicesluzeera;
  km_h= interpolateLinearly ( kms, speedKmH , km);
    if km_h~=0
      t=(slicesluzeera/km_h)*3600;
    else 
      t=0;
    end
    %%%Denbora tarte guztiak batu ditugu bidaia osoaren denbora jakiteko
   estimatedTime=(estimatedTime+t);
  end


endfunction
