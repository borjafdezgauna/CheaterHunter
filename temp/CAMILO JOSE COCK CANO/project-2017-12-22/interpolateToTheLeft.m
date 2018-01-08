function y = interpolateToTheLeft(xv, yv, x)
% This function gets the closest value from the x vector from the left and outputs its y value

% The i variable is the index used for the vector elements
% It works by comparing the entered x value and comparing it to the last x vector value
% if the x vector value is lower it decreaces te i by 1 and continues searching.
i = length(xv);
while x < xv(i) && i > 1
   i = i - 1;
end
y = yv(i);
end