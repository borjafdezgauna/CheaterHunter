%Esta función interpola linealmente a partir de un conjunto de valores x,y.
%Es decir, obtendrá nuevos puntos partiendo del conociemiento de un
%conjunto discreto de puntos.

function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x) 
 i=1;
while i<length(xVector) && x>xVector(i)
    i=i+1;
end
if i==1
    interpolatedY=yVector(1);
else
    X2=xVector(i);
    X1=xVector(i-1);
    Y1=yVector(i-1);
    Y2=yVector(i);
    
    interpolatedY=Y1+((Y2-Y1)/(X2-X1))*(x-X1);
end
end