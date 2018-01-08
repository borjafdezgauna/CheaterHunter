function [interpolatedY]=interpolateLinearly(xVector, yVector,x)
%Esta función recibe un vector con los valores de x, otro 
%con los valores de y, y devuelve el valor interpolado de y para un x dado.
i=1;
while xVector(i)<=x && i<length(xVector)
   i=i+1;
end
i=i-1;
ancho=(xVector(i+1))-(xVector(i));
alto=yVector(i+1)-yVector(i);
c=x-xVector(i);
interpolatedY=((alto/ancho)*c)+yVector(i); 
end