%checkSpeedLimits

function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
    slicesKms = linspace( driverLogKm(1) , driverLogKm(length(driverLogKm)) , numSlices);%divide in the number of slices
    kmsAboveSpeedLimit = 0;%initializing the counter
      for i = 1 : length( slicesKms )
      limite = interpolateToTheLeft(  limitKms , limitSpeeds , slicesKms (i) );%calculates the limit
      velocidad = interpolateToTheLeft( driverLogKm  , driverLogSpeed , slicesKms (i) ); %calculates the speed in each point 
      if ( velocidad > limite ) %compares the speed with the limit
           
          d = round( slicesKms(2) - slicesKms(1) , 4 );  %calculates the value of a range of a slice
                
          kmsAboveSpeedLimit = kmsAboveSpeedLimit + d;%adding it to the counter
                     
      end
    end
    percentAboveSpeedLimit = kmsAboveSpeedLimit / driverLogKm(length(driverLogKm));%output
     
end