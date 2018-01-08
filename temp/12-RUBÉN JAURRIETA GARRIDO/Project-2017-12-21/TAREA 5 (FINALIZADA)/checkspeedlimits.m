function [kmsabovespeedlimit,percentabovespeedlimit,c,b]=checkspeedlimits(driverlogkm,driverlogspeed,limitkms,limitspeeds,numslices)
distfrac=max(driverlogkm); %La variable distfrac adopta el mayor valor de la distancia
kmsabovespeedlimit=0; %Ponemos a cero la variable de salida de la función
percentabovespeedlimit=0; %Ponemos a cero la variable de salida de la función
z=driverlogkm(1); %Variable z adopta el valor del primer elemento del vector driverlogkm
v=driverlogkm(end); %Variable v adopta el valor del ultimo elemento del vector driverlogkm
w=(v-z)/numslices; %w será el valor de cada uno de los intérvalos.
a=(w:w:v); %variable a será el número de intérvalos
for i=1:numslices %i las veces que queremos realizar el for. Tantas como intervalos queramos generar.
b(i)=interpolateLinearly(driverlogkm,driverlogspeed,a(i)); %Llamada a función de interpolacion para crear un vector (a) interpolando para cada intervalo. 
c(i)=interpolatetoleft(limitkms,limitspeeds,a(i)); %Lo mismo para crear vector de limites de velocidad
end
for k=1:numslices %k las veces que queremos relizar el for. De 1 al número de intérvalos que queremos generar.
    if b(k)>c(k) %Comparamos cada elemento del vector b con cada elemento del vector c (en cada intervalo la velocidad del conductor con la limite)
        kmsabovespeedlimit=kmsabovespeedlimit+(distfrac/numslices); %En el caso de que el coche se pasa de velocidad, sumamos la distancia que suma ese intervalo.
    end
end 
percentabovespeedlimit=(kmsabovespeedlimit/distfrac)*100; %Para calcular el porcentaje de la ruta fuera de los limites de velocidad.
end