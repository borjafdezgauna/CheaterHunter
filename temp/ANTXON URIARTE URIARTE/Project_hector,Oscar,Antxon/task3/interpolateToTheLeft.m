%We interpolate linearly to the left to calculate the speed in each point,and as it is constant, it is y0
function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)
i=1;


while i <= length(xVector)&& xVector(i)<x 
    i=i+1;  
end

if i == 1
    i = i +1;
end

y0=yVector(i-1);

interpolatedY= y0;



end

  
