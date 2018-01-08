function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)

%Primero inicializamos j

j=1;
 
%Establecemos nuestras condiciones
%En el primer caso, si x es menor que el intervalo definido
%la función te muestra mensaje de error
 
if x<xVector(1)
  fprintf('El valor interpolado %d esta fuera del intervalo definido', (x))

%Ahora establecemos una condición para la primera posición 
%del vector, ya que esta generaría problemas al no existir 
%la posición -1
  
elseif x==xVector(1)
interpolatedY=yVector(1)

%Tomamos otra condición, para que si x vale mas que el intervalo
%definido la interpolación tome el último valor

elseif x>xVector(end)
interpolatedY=yVector(end)

%Por último, si ninguna de estas condiciones se cumple compararemos
%x con los diferentes valores del intervalo, hasta obtener donde está
%situado, entonces mostraremos el valor anterior

else
while x>xVector(j)
  j=j+1;
end
interpolatedY=yVector(j-1)   
end
end