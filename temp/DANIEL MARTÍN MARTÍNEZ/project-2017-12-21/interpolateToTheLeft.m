
function [interpolatedY]= interpolateToTheLeft (xVector, yVector, x)
for j=1:(length(xVector)-1)
    if x>=xVector(j) && x<xVector(j+1)
        
    interpolatedY= yVector (j);
   
    end
end
   if x>=xVector(end)
        interpolatedY= yVector(end);
end
