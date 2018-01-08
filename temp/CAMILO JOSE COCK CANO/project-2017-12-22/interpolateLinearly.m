function y = interpolateLinearly(xv, yv, x)
% This function calculates the interpolated value for the entered x

% The i variable is the index used for the vector elements
% It works by comparing the entered x value and comparing it to the second x vector value
% if the x vector value is bigger it increases the i by 1 and continues searching.
i = 1;
while x >= xv(i+1) && i < (length(xv) - 1)
   i = i + 1;
end

% slope calculation
slope = (yv(i+1) - yv(i)) / (xv(i+1) - xv(i));

% Calculate the interpolated y
y = yv(i) + slope * (x - xv(i));
end