%This function checks whether the x value is or isn't between
%A and X kms. If that's true, interpolatedY gets the value
%of the "n-1"th vector, the speed limit at that km.

function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)
index = 1;
%Check if our current pos is bigger than the section we are in. If it's
%bigger, check if we are in the following section. If we are there, the
%corresponding speed limit value is selected from the yVector.
interpolatedY = 0;
if x >= xVector(index)
    index = index + 1;
    if x >= xVector(index)
        index = index + 1;
        if x >= xVector(index)
            interpolatedY = yVector(index);
        end
        if interpolatedY ~= yVector(index)
            interpolatedY = yVector(index-1);
        end
        index = index - 1;
    end 
    if interpolatedY ~= yVector(index)
        interpolatedY = yVector(index-1);
    end
end
end

