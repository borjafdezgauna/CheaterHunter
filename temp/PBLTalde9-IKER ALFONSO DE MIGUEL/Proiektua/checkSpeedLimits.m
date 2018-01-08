function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] =checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)

%%zati txiki bakoitzaren balioa  
distantzia = (driverLogKm(end) -driverLogKm(1))/numSlices;
 kmsAboveSpeedLimit=0;

 %%x bektore bat sortu numSlices balio dituena
 for x = linspace(driverLogKm(1), driverLogKm(end), numSlices)
    [abiaduraLimitea]=interpolateToTheLeft(limitKms,limitSpeeds,x);
      [interpolatedAbiadura]=interpolateLinearly(driverLogKm,driverLogSpeed,x);
    
      %%abiadura limitea baino altuagoa bada gainetik egondako distantzia
    %%gehitu
    if interpolatedAbiadura>=abiaduraLimitea
     kmsAboveSpeedLimit=kmsAboveSpeedLimit+distantzia;
    end
   %%limite gainetik egondako km portzentai kalkulatu
   percentAboveSpeedLimit =(kmsAboveSpeedLimit/driverLogKm(end))*100;
   
   
    
    end