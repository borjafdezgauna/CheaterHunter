%interpolateLinearly

function [interpolatedY]= interpolateLinearly(xVector,yVector,x)
   
   i=2;
   while xVector(i)<x && i<=length(xVector)
       i=i+1
   end
y2=yVector(i-1);
y1=yVector(i);
x2=xVector(i-1);
x1=xVector(i);
interpolatedY=((((y1-y2)*(x-x2))/(x1-x2))+y2)
end