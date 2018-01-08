function [interpolatedY] = interpolateToTheLeft(xVector,yVector,x)
%This function gets a vector with x-values and a vector with y-values
%and returns the interpolated value of y for the given x.
 i=1;
 while i<=length(xVector) && xVector(i)<x 
   i=i+1;
 end
 if i==1
   i=i+1;
 end  
 interpolatedY=yVector(i-1);
end