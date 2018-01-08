function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
%The variable is two because there are no values lower than 1 as it`s the starting value
variable=2;
%Here we get the position of the value we are given like x in the xvector 
while xVector(variable)<x
variable= variable+1;
end
%Using the position we calculate the slope of the yvector
y2= yVector(variable);
y1= yVector(variable-1);
x2= xVector(variable);
x1= xVector(variable-1);
slope= (y2-y1)/(x2-x1);
interpolatedY= y1 + slope * (x-x1);
endfunction