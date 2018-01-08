function [ estimatedTime ] = estimateTime( km, speedKmH, numSlices)

x=linspace(km(1),km(end),numSlices);
%Se contruye un vector formado por Numslice valores desde el valor inicial hasta el final de la distancia (en kms)
slice = (km(end)-km(1))/numSlices;
%Se calcula la distancia de cada Slice
estimatedTime=0;
%Se da un valor inicial al estimated time
for i=2:length(x)

    interpolatedY=interpolateLinearly( km, speedKmH , x(i));
    velocidad=interpolatedY;
    estimatedTime=estimatedTime+slice/velocidad;
    %Este for calcula el tiempo que tarda en completar cada slice a la velocidad determinada en ese tramo y va sumando
    %ese tiempo de cada slice hasta llegar al final.
   
end

end
    
%Calculamos el tiempo estimado que va a tardar en llegar a una
%distancia con una velocidad variable a cada slice.
    





