function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
i=2;
while x>xVector(i)
    i=i+1;
end

  interpolatedY=yVector(i-1)+(((yVector(i)-yVector(i-1)))/(xVector(i)-xVector(i-1)))*(x-(xVector(i-1)));
  
    
    
    
end
