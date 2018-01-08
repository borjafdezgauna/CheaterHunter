function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)

    slicesKms = linspace( driverLogKm(1) , driverLogKm(length(driverLogKm)) , numSlices);
        
    kmsAboveSpeedLimit = 0;
  
    for i = 1 : length( slicesKms )
      
      limit = interpolateToTheLeft(  limitKms , limitSpeeds , slicesKms (i) );
            
      speed = interpolateToTheLeft( driverLogKm  , driverLogSpeed , slicesKms (i) );  
     
      if ( speed > limit )
          
          d = round( slicesKms(2) - slicesKms(1) , 4 );  
               
          kmsAboveSpeedLimit = kmsAboveSpeedLimit + d;
                    
      end
      
    end
        
    percentAboveSpeedLimit = kmsAboveSpeedLimit / driverLogKm(length(driverLogKm));
    
end

