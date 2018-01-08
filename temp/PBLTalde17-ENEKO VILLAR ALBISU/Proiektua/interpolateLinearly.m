function [interpolatedY] = interpolateLinearly(xVector,yVector,x)
%This function gets a vector with x-values and a vector with y-values
%and returns the interpolated value of y for the given x.
 i=1;
 while xVector(i)<x && i<=length(xVector)
   i=i+1;
 end
 if i==1
   i=i+1;
 end
 x0=xVector(i-1);
 y0=yVector(i-1);
 x1=xVector(i);
 y1=yVector(i);
 malda=(y1-y0)/(x1-x0);
 interpolatedY=y0+(malda*(x-x0));
end