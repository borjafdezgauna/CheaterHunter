
    
function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
i=2;
while length(xVector)>i && xVector(i) <=x
    i=i+1;
end
    y2= yVector(i);
    y1=yVector(i-1);
    x2= xVector(i);
    x1= xVector(i-1);
    malda=(y2-y1)/(x2-x1);
    interpolatedY = y1 + malda*(x-x1);
end