function [interpolatedY]=interpolateLinearly(xVector,yVector,x)
i=2;
while i<length(xVector) && xVector(i)<=x
    i=i+1;
end
y2=yVector(i);
y1=yVector(i-1);
x2=xVector(i);
x1=xVector(i-1);

slope=(y2-y1)/(x2-x1);

interpolatedY=y1+slope*(x-x1);
end 