function [fuelExpenditure] =calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices)
%Funtzio honek ibilbidean zehar erabilitako erregai kopurua kalkulatzen du.
 distantzia=(routeKms*1000);
 interpolatedV=[];
 Altuera=[];
 %Interpolatutako abiadura eta altuera kalkulatu
 for tartea=linspace(routeKms(1),routeKms(end),numSlices)
   V=interpolateLinearly(logKms,logSpeeds,tartea);
   interpolatedV=[interpolatedV;V];
   Y=interpolateLinearly(distantzia,routeHeights,tartea);
   Altuera=[Altuera,Y];
 end
 %Datuak kalkulatu.
 malda=diff(Altuera)./(distantzia(end)/numSlices);
 alpha=[atan(malda)];
 abiadura=interpolatedV/3.6;
 denbora=(distantzia(end)/numSlices)./abiadura(2:end);
 azelerazioa=[diff(abiadura)./denbora];
 %Datuak funtzioan sartu.
 fuel=calculateFuelExpenditure(abiadura(2:end),azelerazioa,alpha',(distantzia(end)/numSlices));
 fuelExpenditure=sum(fuel);
end