function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)

%Primero inicializamos j

j=1;
 
%Establecemos nuestras condiciones
%En el primer caso, si x es menor que el intervalo definido
%la funci�n te muestra mensaje de error
 
if x<xVector(1)
  fprintf('El valor interpolado %d esta fuera del intervalo definido', (x))

%Ahora establecemos una condici�n para la primera posici�n 
%del vector, ya que esta generar�a problemas al no existir 
%la posici�n -1
  
elseif x==xVector(1)
interpolatedY=yVector(1)

%Tomamos otra condici�n, para que si x vale mas que el intervalo
%definido la interpolaci�n tome el �ltimo valor

elseif x>xVector(end)
interpolatedY=yVector(end)

%Por �ltimo, si ninguna de estas condiciones se cumple compararemos
%x con los diferentes valores del intervalo, hasta obtener donde est�
%situado, entonces mostraremos el valor anterior

else
while x>xVector(j)
  j=j+1;
end
interpolatedY=yVector(j-1)   
end
end