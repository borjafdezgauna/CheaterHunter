function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)
i=2;
while length(xVector)>i && xVector(i) <= x
    i=i+1;
end
    interpolatedY= yVector(i-1)
end
    
    