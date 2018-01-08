function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
  %Funtzio honekin, interpolazioaren funtzioa erabiliko dugu denbora estimatua lortzeko.
  
  %Hasteko, estimatedTime-ri 0 balioa emango diogu, 0-tik has dadin.
  estimatedTime=0;
  
  %Ondoren, aurretik egindako bi funtzioak erabiliko ditugu, datuak bihurtzeko.
  m  = toMeters(kms);
  msSpeed = toMetersPerSecond( speedKmH );
  
  %Slice bakoitzak duen tamaina ikusteko, m bektorearen azken balioa hartuko dugu, eta Slice kopuruarengatik zatituko dugu.
  bukaera=m(1,end);
  aldakuntza_d=bukaera/numSlices;
 
    %For begizta bat erabiliko dugu, Slice bakoitzean zenbat denbora behar duen kalkulatzeko.
    for i=1:numSlices
      
      %Interpolazio funtziorako t prestatuko dugu.
      t=(i-1)*aldakuntza_d;
      
      %Eskuratutako datuekin interpolazioa kalkulatuko dugu.
      interpolatedY=interpolateLinearly(m,msSpeed,t);
      
        %Errorerik ez gertatzeko, interpolazioa 0 denean zuzenean denbora 0 jarriko dugu
        if interpolatedY==0
          estimatedTime=0;
        
        %0 ez bada, balioa abiadura bat denez, denborara pasako dugu, eta slice bakoitzeko datuak gehitzen joango gara, denbora totala lortzeko.
        else
          estimatedTime= estimatedTime + aldakuntza_d/interpolatedY;
        end
    end
end