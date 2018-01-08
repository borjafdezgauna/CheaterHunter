
function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)
    long=length(xVector);
    % Comprobamos que no nos salimos de los margenes maximo y minimo
    if (x<xVector(1))
        interpolatedY='La distancia introducida no se puede interpolar entre las distancias del vector';    
    else
        i=1;
        if x>=xVector(long)
            interpolatedY=yVector(long);
        else
            while (xVector(i)<=x && length(xVector)>i)
            interpolatedY=yVector(i);
            i=i+1;
            end
        end
    end
end