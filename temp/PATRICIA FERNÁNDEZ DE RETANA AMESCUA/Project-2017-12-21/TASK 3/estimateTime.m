function estimatedTime = estimateTime (kms, speedKmH,numSlices)
  
  
  totalTime=0;
  delta_d= kms(end)/numSlices;
  
  
  for  i=1:numSlices
      
      km= (i-1)*delta_d;
      
      interpolateSpeed = interpolateLinearly(kms, speedKmH,km);
      
        if interpolateSpeed == 0
          
            timeSlice = 0;
            
            totalTime = totalTime + timeSlice;
            
        else 
            
            timeSlice=delta_d/interpolateSpeed;
       
            totalTime = totalTime + timeSlice;
            
        end
        
     end
estimatedTime = totalTime;
  end