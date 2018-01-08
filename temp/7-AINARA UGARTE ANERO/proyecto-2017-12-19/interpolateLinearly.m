function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x);
  
  i=1;
   while i<length(xVector) && xVector(i)<=x
     i=i+1;
   end
   i=i-1;
    x1=xVector(i);
    x2=xVector(i+1);
    y1=yVector(i);
    y2=yVector(i+1);

    interpolatedY=  y1+(y2-y1)/(x2-x1)*(x-x1);

   end
