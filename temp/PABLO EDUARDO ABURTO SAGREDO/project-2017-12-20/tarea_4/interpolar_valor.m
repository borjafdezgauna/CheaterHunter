%Con este script pedimos que se introduzcan los datos y comprueba que sean correctos para
%utilizar la funcion de interpolacion lineal.

clear
clc

km=input('Introduzca valor a interpolar (unidades en kms): ');
xVector=input('Introduzca vector con valores de X: ');
yVector=input('Introduzca vector con valores de Y: ');
if length(xVector)~=length(yVector)
    disp('Los vectores deben ser del mismo rango');
elseif km<max(xVector) && km>min(xVector)
    interpolateLinearly(xVector,yVector,km)
else
    disp('El valor está fuera del intervalo recorrido');
end