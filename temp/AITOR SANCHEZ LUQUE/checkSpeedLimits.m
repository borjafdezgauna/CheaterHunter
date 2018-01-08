function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
%Here we get the last value of driverLogKm
lvalue = driverLogKm(length(driverLogKm));
%Then we make a vector with numslice values from 0 to the last value
slices = linspace(0,lvalue,numSlices);
kmsAboveSpeedLimit=0;
for slice=slices;
  %Here we interpolate to get the slopes of the speed
  speed=interpolateLinearly(driverLogKm,driverLogSpeed,slice);
  %Here we interpolate to get the the speed limit( which remains constant so
  % there is no slope) for each slice of road. 
  speedlimit=interpolateToTheLeft(limitKms,limitSpeeds,slice);
  %This is to check whether the driver suprases the speed limit, and in case he does
  % ad the for how many km he has done it to the counter (kmsAboveSpeedLimit)
  if speed > speedlimit
  %We use the second slice because it´t the longitude os each slice
  kmsAboveSpeedLimit=kmsAboveSpeedLimit+slices(2);
  end
end
  %Here we just calculate the percentage
percentAboveSpeedLimit=(kmsAboveSpeedLimit/driverLogKm(length(driverLogKm)))*100;

end