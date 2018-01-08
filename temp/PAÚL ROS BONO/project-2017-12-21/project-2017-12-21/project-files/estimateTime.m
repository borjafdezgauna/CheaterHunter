function [estimatedTime] = estimateTime (kms, speedKmH, numSlices)

%En primer lugar convertimos las variables introducidas a metros.

ms=toMeters(kms);
speedmS=toMetersPerSecond(speedKmH);

%A continuación definimos la variable j que utilizaremos posteriormente
%y Resultado como una matriz vacía

j=1;
Resultado=[];

%Ahora calculamos el numero de interpolaciones que debemos realizar
%a traves de un linspace que nos saca las diferencias de ms en base 
%a numSlices y posteriormente obtenemos el Avnce

NumInter=linspace(ms(1), ms(end), numSlices);
Avance=ms(end)/numSlices;

%A través de un for utilizamos NumInter para obtener la interpolación
%

for j=NumInter
    InterpolacionM=interpolateLinearly(ms, speedmS , j);
    if InterpolacionM==0
    Segundos=0;
    Resultado=[Segundos Resultado];
    else
    Segundos=Avance/InterpolacionM;
    Resultado=[Segundos Resultado];
end
end
estimatedTime=sum(Resultado)
end