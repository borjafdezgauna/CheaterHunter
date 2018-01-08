%This function gets a vector with x-values and a vector with y-values
%and returns the interpolated value of y for the given x.
function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
i=1;
    while xVector(i)<=x
    i=i+1;
    end
    
    y2=yVector(i);
    y1=yVector(i-1);
    x2=xVector(i);
    x1=xVector(i-1);
    
    slope=(y2-y1)/(x2-x1);%We calculate the slope
    
    interpolatedY= y1 + slope * (x-x1);%We use the interpolate formula
end
