%TAREA 4, apartado 1
%Funcion que realiza el calculo de la velocidad interpolada(interpolatedY)
%para cada distancia en la que se encuentre el conductor,
 function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
    i=1;
    while i<length(xVector)  && x>xVector(i)
        i=i+1;
        %El bucle funciona a todo lo largo de la distancia que se
        %introduzca.
    end
    if i==1
        interpolatedY= yVector(i);
        %Esta condicion indica que para el punto inicial, la velocidad interpolada
        %sera igual al primer valor del vector de velocidad
    else
        interpolatedY= yVector(i-1)+(yVector(i)-yVector(i-1))/(xVector(i)-xVector(i-1))*(x-xVector(i-1));
        %Para el resto de puntos del vector se aplicará esta ecuacion para
        %calcular la velocidad interpolada en dicho punto
    end

 end


