function [interpolatedY]=interpolateLinearly(xVector,yVector,x)
i=1;%Iniciamos i por 1, por ser el primero elemento del vector, ya que no hay elemento 0 en un vector
while xVector(i)<=x && i<length(xVector)
%Siempre y cuando mi vector sea menor que la x dada y menor que el último elemento del vector, 
%se le sumará uno a la posición del elemento en ese vector
    i=i+1;
end
i=i-1; %Cuando el elemento sea el último de ese vector
interpolatedY=yVector(i)+ (((yVector(i+1)-yVector(i))*(x-xVector(i)))/(xVector(i+1)-xVector(i))); %Se utiliza la semejanza de triángulos
end
