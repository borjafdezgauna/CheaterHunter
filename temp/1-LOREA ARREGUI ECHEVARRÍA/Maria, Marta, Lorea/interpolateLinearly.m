
%Creamos una funcion llamada "interpolatedY" la cual tiene las variables "xVector", "yVector" y "x"
function [interpolatedY]=interpolateLinearly(xVector,yVector,x)
  i=1; 
  
  %Creamos un "while" en el cual ponemos la condicion que debe de tener la busqueda de datos.
  while i<length(xVector) && xVector(i)<=x 
    
    i=i+1; %Muestra una posicion mas del dato que hayamos introducido
  end
  i=i-1;    %Muestra una posicion menos del dato que hayamos introducido
  
  %Para que sea de menor dificultad, asignamos variables a las operaciones interiores
  A=xVector(i+1)-xVector(i); 
  B=yVector(i+1)-yVector(i); 
  C=x-xVector(i); 
  
  %Ponemos la ecuacion con las variables asignadas para conseguir el valor de la interpolacion
  interpolatedY=yVector(i)+C*B/A; 
end