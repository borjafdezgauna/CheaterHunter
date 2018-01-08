function interpolatedY = interpolateToTheLeft (xVector, yVector, x)
     i=1;
     while i<=length(xVector) && x>=xVector(i)
        i=i+1;
     end
     interpolatedY=yVector(i-1);
end