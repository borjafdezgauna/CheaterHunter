function[estimatedTime]= estimateTime(kms,speedKmH,numSlices) 
   %aurretik definitutako funtzioak exekutatzea
   m=toMeters(kms);
   ms=toMetersPerSecond(speedKmH);
   MinM=min(m);
   MaxM=max(m);
   dist=MaxM/numSlices; %distantzia totala zatituta
   estimatedTime=0; %errorerik eman ez dezan
   
   for distantziaZatituta=linspace(MinM, MaxM, numSlices) %banan banan hartu
    
        Vinterpolatua=interpolazioa(m,ms,distantziaZatituta); %interpolazioa funtzioa exekutatu
        %zatizero infinito ez emateko
        if Vinterpolatua==0
            denbTarte=0;    
            
        else 
            
            denbTarte=dist/Vinterpolatua; %denbora tarteak kalkulatzeko
            estimatedTime=estimatedTime+denbTarte; %loop bakoitzean baloreak gehitu totala lortu arte
            
        end
   end    
 end

