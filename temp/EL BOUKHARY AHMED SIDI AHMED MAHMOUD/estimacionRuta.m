clc
clear
%nombramos la carretera y el conductor
carretera=['n','a'];
conductor=[1 2];
%recorremos los vectores llamando a los archivos para calcular los tiempos
for j=conductor
    for i=carretera
    archivo=sprintf('%s1-driver%d-log.csv',i,j);
    datos=dlmread(archivo,',',1,0);
    kms=datos(:,1);
    speedKmH=datos(:,2);
    numSlices=1000;
    seconds=estimateTime( kms, speedKmH, numSlices);
    tiempo=toHMS(seconds);
    %mostramos los tiempos estimados
    fprintf('Estimated time for driver%d in route %s1: %s\n' ,j,i,tiempo)
    end
end
