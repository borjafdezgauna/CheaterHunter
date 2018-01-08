function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
    totDistance=driverLogKm(1,end);%Takes the last value from m which is the total distance
    delta_km=totDistance/numSlices;
    totLimitDistance=limitKms(1,end);
    delta_Limitkm=totLimitDistance/numSlices;
    for i=1:numSlices
          km=(i-1)*delta_m;
          interpolatedSpeed=interpolateLinearly(driverLogKm, driverLogSpeed, km);%We calculate the interpolated y values for the given 
          km_limit=(i-1)*delta_Limitkm;
          interpolatedLimitSpeed=interpolateToTheLeft(limitKms ,limitSpeeds ,km_limit);
          if interpolatedSpeed<interpolatedLimitSpeed
          kmsAboveSpeedLimit=totDistance-;%Calculates the amount of km in which speed is bigger than speed limit
          end
    end   
    percentAboveSpeedLimit=(kmsAboveSpeedLimit/totLimitDistance)*100;%We calculate the percentage of km in which driver's speed is bigger than speed limit
    
        
        