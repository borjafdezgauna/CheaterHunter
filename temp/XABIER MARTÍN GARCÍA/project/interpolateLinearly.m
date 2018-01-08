
%We used a function to calculate the value of Y using a vector and the one
%before it. Then using the "line" formula, we just just cleared Y with
%other known values.


function [interpolatedY] = interpolateLinearly(xVector, yVector, x)

index = 2;

while xVector(index) < x && x < xVector(end)
    index = index + 1;
end

y2 = yVector(index);
y1 = yVector(index - 1);

x2 = xVector(index);
x1 = xVector(index - 1);

slope = (y2 - y1)/(x2 - x1);

interpolatedY = y1 + slope*(x - x1);

end

