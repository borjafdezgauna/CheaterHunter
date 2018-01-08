function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
Slices=linspace(driverLogKm(1),driverLogKm(end),numSlices);
%We create a vector to divide the 'driverlogKm' into "numSlices" different gaps.
lengthslices=(driverLogKm(end)-driverLogKm(1))/numSlices;
%We calculate the length of the gaps we previously made.
kmsAboveSpeedLimit=0;
   for km=Slices
   Speed=interpolateLinearly(driverLogKm,driverLogSpeed,km);
   %this way we can interpolate this to score the speed that the driver is in that km.
   SpeedLimit=interpolateToTheLeft(limitKms,limitSpeeds,km);
   %and this way we can score which the speed limit is.
      if Speed>SpeedLimit
      kmsAboveSpeedLimit=kmsAboveSpeedLimit+1;
      %we make an IF so we can calculate how many slices are above the speed limit.
      end
   end
percentAboveSpeedLimit=(kmsAboveSpeedLimit*100)/numSlices;
%this way we can calculate the percentage that the drives has been above the speed limit.
kmsAboveSpeedLimit=kmsAboveSpeedLimit*lengthslices;
%we use this to turn the number of slices into proper kilometers.
end