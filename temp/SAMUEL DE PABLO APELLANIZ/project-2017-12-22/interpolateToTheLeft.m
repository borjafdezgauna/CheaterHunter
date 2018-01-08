function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)
i=2;
while i<length(xVector) && xVector(i)<=x
i= i+1;
end


if x>xVector(end)
    a=yVector(end);
else
    a=yVector(i-1);
end
interpolatedY=a
end