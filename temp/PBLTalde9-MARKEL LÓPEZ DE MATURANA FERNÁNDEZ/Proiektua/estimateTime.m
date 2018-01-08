function [estimatedTime]=estimateTime(kms,speedKmH,numSlices)

  %%zati txiki bakoitzaren balioa
  estimatedTimeOrdu=0;
  distantzia = (kms(end) -kms(1))/numSlices;
  
  %%x bektore bat sortu numSlices balio dituena
  for x = linspace(kms(1), kms(end), numSlices)
    [interpolatedAbiadura]=interpolateLinearly(kms,speedKmH,x);
   
    %%abiadura 0 denean denbora 0 izango da
    if interpolatedAbiadura==0 
      denbora=0;
    else
    denbora=distantzia/interpolatedAbiadura;        %%denbora(h)=distantzia(km)/abiadura(km/h)
    end
    
    %%denbora tarte guztiak batu
    estimatedTimeOrdu=estimatedTimeOrdu+denbora;
   
  end
  %%denbora segunduetara pasatu
  estimatedTime=estimatedTimeOrdu*3600;
    
    end
    
    