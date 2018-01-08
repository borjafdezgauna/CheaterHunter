function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
long=length(xVector);
% Comprobamos que no nos salimos de los margenes maximo y minimo
if (x<xVector(1))||(x>xVector(long))
    interpolatedY='La distancia introducida no se puede interpolar entre las distancias del vector';    
else
        %Evitamos el error de la seleccion del primer punto
    i=1;
    while (xVector(i)<=x && length(xVector)>i)
        if xVector(i)==x
            interpolatedY=yVector(i);
        else
            interpolatedY=((yVector(i+1)-yVector(i))*(x-xVector(i)))/(xVector(i+1)-xVector(i))+yVector(i);
        end
        i=i+1;
    end
end