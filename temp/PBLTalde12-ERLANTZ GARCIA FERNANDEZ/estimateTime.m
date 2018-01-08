%funtzio honek zenbat denbora behar duten gidariak trajektua egiteko estimatzen lagunduko digu
%horretarako lerp funtzioari deituko dio


function [estimatedTime] = estimateTime(kms, speedKmH, numSlices)

estimatedTime = 0;
delta_t= kms(end)/numSlices;

for i = 1:numSlices
  n = (i-1)*delta_t;
  speed = lerp(kms,speedKmH,n);
  
  if speed == 0
    t = 0;
    
    else
    t = delta_t/speed;
    end
    
    estimatedTime = estimatedTime+t*3600;
    
    end
    
    end

















    
    
    
    
    
    
    
    
    
    

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 