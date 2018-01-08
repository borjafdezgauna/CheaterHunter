%Interpolate
function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
i=2;
while xVector(i)<x
    i=i+1;
end
y2= yVector(i);                % one point in the 'y' axis (2)  [the end 'y']
y1= yVector(i-1);              % different point in 'y' axis (1)[the begining 'y']
x2= xVector(i);                % one point in the 'x' axis (2)  [the end 'x']  
x1= xVector(i-1);              % different point in 'x' axis (1)[the begining 'x'] 
slope= (y2-y1)/(x2-x1);        % how we calculate the slope. #
interpolatedY= y1+slope*(x-x1);% straightl line ecuation. 
end

%With this function we will score the exact point of the chart we are making.

%FOR EXAMPLE
%xVector will be the 'x' axis when yVector is going to be the 'y' axis of the chart.
%The 'x' that it will be given to the function will be the exact point on the x
%axis.

%What the function is going to do:
%   1) the 'i' is going to locate the position of the column on which the number
%   we want is.
%   2) doing some operations we will score the slope of the chart.
%   #[(the end 'y' minus the begining 'y') divided (the end 'x' minus the begining 'x')]
%   3) Using the formula of the straight line  (that we already know) 
%   and the points previously obtained we can interpolate the 'x' given to the function.   
    
