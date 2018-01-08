function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
%This function gets a vector with x-values and a vector with y-values
%and returns the interpolated value of y for the given x.

i=2;
while xVector(i)<x
    i=i+1;
end

x1=xVector(i);
y1=yVector(i);
x0=xVector(i-1);
y0=yVector(i-1);

interpolatedY=y0+((y1-y0)/(x1-x0))*(x-x0);
end