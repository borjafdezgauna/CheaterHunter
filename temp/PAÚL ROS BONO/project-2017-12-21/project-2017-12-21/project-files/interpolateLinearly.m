function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
i=1;

%Establecemos i=1, para utilizarla en una condicion posterior
%En el primer if tenemos en cuenta los valores que estan fuera del
%intervalo del vector x (xVector), de forma que si no pertenece a este nos
%muestra un aviso

if x<xVector(1) || x>xVector(length(xVector))
fprintf('El tiempo (%d segundos) está fuera del intervalo definido \n', (x));

%Tras comprobar que el tiempo introducido pertenece a nuestro intervalo,
%introducimos una segunda condición para evitar problemas en la fórmula de
%interpolación, que nos generaba error en el primer valor de xVector

elseif x==xVector(1)
    interpolatedY=yVector(1);
    
%Finalmente establecemos una tercera condición que lleva a cabo la
%interpolación en el resto de tiempos (x) introducidos
    
else    
while x>xVector(i)
    i=i+1;
end
v1=i-1;
v2=i;


DX1=xVector(v1);
DX2=xVector(v2);
DY1=yVector(v1);
DY2=yVector(v2);

interpolatedY=DY1+(((x-DX1)/(DX2-DX1))*(DY2-DY1));

end
end


