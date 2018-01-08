function [ kmsAboveSpeedLimit, percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)

vOS=[]; %Bektore bat sortzen ari da
kmsAboveSpeedLimit=0; %balioa zero fijatzeko
pos=1;


    for x = linspace(min(driverLogKm)+1, max(driverLogKm), numSlices) %balioak banan banan hartzeko
  %aurretik definitutako funtzioak exekutatu
         Vmax=interpolateToTheLeft(limitKms, limitSpeeds, x);  
         Vdriver=interpolazioa(driverLogKm, driverLogSpeed, x);    
         vOS=[vOS (Vdriver>Vmax)];
        
         pos=pos+1;
         %berriro exekutatu hurrengo balioarekin
    end
    
    kmsAboveSpeedLimit= sum(vOS)*max(driverLogKm) / numSlices; %formula limitearen gaineko kilometroak erlazionatzeko kilometro totalekin
    percentAboveSpeedLimit=kmsAboveSpeedLimit / max(driverLogKm) * 100; %formula simplea portzentaiak kalkulatzeko
   
end