function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
%estimateTime([0 1 2 3],[40 50 40 30],1000)
%la variable tiempoacumulado es para ir sumando los tiempos previstos para solucion final
%sl_dist, es la distancia entre los intervalos generados con numSlices entre puntos


format long;
tiempoacumulado=0; %distancia entre los puntos distancia registrados
sl_dist=0; %distancia de los slices. Los subpuntos entre puntos
sl_pto=0; %Es el primer punto del slices


for i=1:length(kms)-1
%Sacamos la distancia entre los puntos registrados por el conductor
  pto_dist=toMeters(kms(i+1))-toMeters(kms(i));
  %dividimos el intervalo en numSlices para saber la distancia entre ellos sub_int
  sl_dist=pto_dist/numSlices;
  sl_pto=toMeters(kms(i)); %Cargamos el primer punto del Slice
  
%Sacamos la velocidad en cada punto del Slice
%Para ello necesitamos pasar los metros y sus velocidades
%Llamamos a la funcion por cada Slice
%ejemplo interpolateLinealy([0,1],[40,50],10)


for j=0:numSlices
  %lo ejecutamos si el punto del slice es diferente a cero, porque sino la velocidad es cero
  
  if(sl_pto~=0)
  %pasamos las velocidades y la distancia en m/s y en metros
  %y lo interpolamos 
  
  velocidad_intervalo=interpolateLinearly([toMeters(kms(i)), toMeters(kms(i+1))],[toMetersPerSecond(speedKmH(i)),toMetersPerSecond(speedKmH(i+1))],sl_pto);
  
  %acumulamos el tiempo que se tarda en ese Slice a la velocidad que va en ese Slice
  
  tiempoacumulado=tiempoacumulado+(sl_dist/velocidad_intervalo);
  end
  
  %vamos al otro punto del slice, para ello sumamos la distancia al pto slice que tenemos
  
  sl_pto=sl_pto+sl_dist;
  
  end
  
  end

%hemos terminado todos los ptos, y no calculamos en el ultimo km, porque se supone que para
estimatedTime=tiempoacumulado;

end


