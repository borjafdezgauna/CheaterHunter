function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)

i=0;
JL=linspace(driverLogKm(1), driverLogKm(end), numSlices);
Avance=driverLogKm(end)/numSlices;

for j=JL
DriverSpeed=interpolateLinearly(driverLogKm, driverLogSpeed, j);
Limit=interpolateLinearly(limitKms, limitSpeeds, x);
if DriverSpeed>Limit
  i=i+1;
  else
  i=i;
  end
end
kmsAboveSpeedLimit = i*Avance;
percentAboveSpeedLimit = (kmsAboveSpeedLimit/driverLogKm(end))*100

end
























end