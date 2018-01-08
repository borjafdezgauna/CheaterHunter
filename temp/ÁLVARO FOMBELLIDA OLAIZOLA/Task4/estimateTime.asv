function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
    
    slices = linspace( kms(1) , kms(length(kms)) , numSlices);

    estimatedTime = 0;
    

    for i = 1 : length( slices )
      
      speed = interpolateLinearly( kms  , speedKmH , slices (i) );  
   
      distance = slices(2) - slices(1);     
      
      time = toMeters( distance ) / toMetersPerSecond( speed );
            
      estimatedTime = estimatedTime + time;
      
    end             
end