function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
x1=xVector(1,1);
x2=xVector(1,2);
x3=xVector(1,3);
y1=yVector(1,1);
y2=yVector(1,2);
y3=yVector(1,3);

m=(y2-y1)/(x2-x1);
m1=(y3-y2)/(x3-x2);
if x<x2
interpolatedY=-m*(x1-x)+y1;
end

if x>x2
interpolatedY=-m1*(x3-x)+y3;
end   
end