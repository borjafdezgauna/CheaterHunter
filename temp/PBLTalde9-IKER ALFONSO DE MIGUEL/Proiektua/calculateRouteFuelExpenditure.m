function [ fuelExpenditure ] =calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices )
%%zati txiki bakoitzaren balioa

distantzia = (routeKms(end) -routeKms(1))/numSlices;
fuelExpenditure=0;
for x = linspace(routeKms(1), routeKms(end), numSlices)
   %% 2 abiadura eta altuera interpolatuz kalkulatu
    [ interpolatedAltuera ] = interpolateLinearly( routeKms, routeHeights , x);
    [ interpolatedAbiadura ] = interpolateLinearly( logKms, logSpeeds , x);
    [ interpolatedAbiadura2 ] = interpolateLinearly( logKms, logSpeeds , x+0.01);
    [ interpolatedAltuera2 ] = interpolateLinearly( routeKms, routeHeights , x+0.01); 
    %%azelerazioa kalkulatu
   denbora=0.01/((interpolatedAbiadura+interpolatedAbiadura2)/2);
   azelerazioa=(interpolatedAbiadura2-interpolatedAbiadura)/denbora;
   %%angelua kalkulatu
   alfa=atan((interpolatedAltuera2 -interpolatedAltuera )/0.01);
 
   


%%fuela kalkulatu 

fuelExpenditureZatika=(distantzia*(0.00009*interpolatedAbiadura+(0.021*azelerazioa+0.087*alfa)^2 ))/33;
fuelExpenditure=fuelExpenditure+fuelExpenditureZatika;
end
end

    
