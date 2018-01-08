function [kmsAboveSpeedLimit,percentAboveSpeedLimit] = checkSpeedLimits(driverLogKm,driverLogSpeed,limitKms,limitSpeeds,numSlices)
%Funtzio honek abiadura limitearen gainetik ibilitako km kopurua eta ehuneko balio itzultzen ditu.
 i=1;
 Konparazioa=[];
 interpolatedV=[];
 %Interpolatutako abiadura eta abiadura limitea kalkulatu.
 for tartea=linspace(driverLogKm(1),driverLogKm(end),numSlices)
   V=interpolateLinearly(driverLogKm,driverLogSpeed,tartea);
   interpolatedV=[interpolatedV V];
   speedlimit=interpolateToTheLeft(limitKms,limitSpeeds,tartea);
   Konparazioa=[Konparazioa (interpolatedV(i)>speedlimit)];
   i=i+1;
 end
 %Balioak kalkulatu.
 kmsAboveSpeedLimit=sum(Konparazioa)*(driverLogKm(end)/numSlices);
 percentAboveSpeedLimit=(kmsAboveSpeedLimit/driverLogKm(end))*100;
end    