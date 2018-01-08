function [estimatedTime]=estimateTime(kms,speedKmH,numSlices)

%La funcion al parecer ser correcta, pero acumula un error en los segundos,
%que arrastra hasta el final de los calculos y los tiempos salen desviados
%por unos segundos/minutos.

    t=0;
    d=0;
    x=zeros(1,numSlices);
    
    kms_m=toMeters(kms);                      %Aunque hayamos programado estas 2 funciones para cambiar las unidades de nuestros vectores,
    speedKmH_ms=toMetersPerSecond(speedKmH);  %creemos que sería mucho mas sencillo multiplicar el resultado del tiempo calculado en esta función
    intervalo=(max(kms_m)/numSlices);         %por 3600, para pasar las unidades a segundos.
    
    for i=1:numSlices
        distancias=(max(kms_m)/numSlices)*i;
        d=interpolateLinearly(kms_m,speedKmH_ms,distancias);
        x(i)=d;
        t=((intervalo/x(i))+t);
    end
    estimatedTime=t;
end
        
        
        
        
            