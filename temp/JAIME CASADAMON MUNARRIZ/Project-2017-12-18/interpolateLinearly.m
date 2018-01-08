%interpolateLinearly

function [interpolatedY]= interpolateLinearly(xVector,yVector,x)
   
   i=2;
   while xVector(i)<x && i<=length(xVector)%Loop created to recieve 'y' values interpolating them from an 'x' vector
       i=i+1;
   end
y2=yVector(i-1);
y1=yVector(i);
x2=xVector(i-1);
x1=xVector(i);
interpolatedY=((((y1-y2)*(x-x2))/(x1-x2))+y2);%Necessary formula
end