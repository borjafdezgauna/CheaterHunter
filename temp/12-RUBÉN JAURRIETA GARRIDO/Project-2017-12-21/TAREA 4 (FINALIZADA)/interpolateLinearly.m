function  interpolatedY = interpolateLinearly(xVector,yVector,x)
j=1;
while xVector(j)<=x && j<length(xVector);
    j=j+1;
end
j=j-1;
dY=yVector(j+1)-yVector(j);
dX=xVector(j+1)-xVector(j);
interpolatedY=(dY/dX)*(x-xVector(j))+yVector(j);
end
