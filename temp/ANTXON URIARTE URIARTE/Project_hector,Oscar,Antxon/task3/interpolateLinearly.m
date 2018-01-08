% We interpolate linearly by using different points of one grafic and calculating the Slope of each part and suming all 
function [ interpolatedY ] = interpolateLinearly( xVector, yVector, x)
j=1;
while  xVector(j)<x 
    j=j+1;
end
if xVector(1)>=x
    j=j+1;
end
y2= yVector(j);
y1= yVector(j-1);
x2=xVector(j);
x1= xVector(j-1);

slope= (y2-y1)/(x2-x1);

interpolatedY= y1+slope*(x-x1);

end

