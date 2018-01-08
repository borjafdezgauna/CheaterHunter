function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
i=1;
 while x>xVector(i) && i<=length(xVector)
     i=i+1;
 end
 if i==1
    interpolatedY=yVector(1);
 else 
     x1=xVector(i-1);
     x2=xVector(i);
     y1=yVector(i-1);
     y2=yVector(i);
    interpolatedY=y1+((y2-y1)/(x2-x1))*(x-x1);
 end
end