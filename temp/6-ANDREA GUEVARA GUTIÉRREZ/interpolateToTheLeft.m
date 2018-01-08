function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)
  
  ia=1;
  i=1;
  
  while (i<=length(xVector) && x>=xVector(i))
    
    ia=i;
    i=i+1;
  end
     
    interpolatedY=yVector(ia);
    
 end
  
    