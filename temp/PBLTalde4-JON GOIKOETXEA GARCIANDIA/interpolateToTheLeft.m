function [interpolatedY] = interpolateToTheLeft (xVector, yVector, x)
 i=1;
   x0=0;
   y0=90;
   while xVector(i)<x && i~=length(xVector)
     i=i+1;
    end
    
    if i>1
       x0= xVector(i-1);
       y0= yVector(i-1);
       interpolatedY = y0; 
    end  
    
   y1=yVector(i);
   
   if i==length(xVector)&& xVector(i)<x
   interpolatedY = y1;
  end 
        
end
