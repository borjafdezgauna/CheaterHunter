function[interpolatedY] = interpolateLinearly(xVector,yVector,x)
xlength=length(xVector);
a=xlength-1;
for i=1:a
    b=xVector(i);
    c=i+1;
    d=xVector(c);
    if(x>=b && x<=d)
       y1= yVector(i);
       y2= yVector(c);
       x1= xVector(i);
       x2= xVector(c);
       slope=(y2-y1)/(x2-x1);
       interpolatedY=y1+(x-x1)*slope;
       break
    end
end
end