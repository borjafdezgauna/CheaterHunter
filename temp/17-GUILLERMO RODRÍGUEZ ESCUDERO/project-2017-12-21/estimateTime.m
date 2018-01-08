function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)

  d=0;
  
  t=0; %Inicia el contador de timepo en 0

  cortes=(kms(end)-kms(1))/numSlices; %Con esto calculamos la distancia entre salto y salto

  for d=kms(1):cortes:kms(end) %repetir en el intervalo que trabajamos

    q=interpolateLinearly(kms,speedKmH,d); %llamamos a la funcion Interpolar y la guardamos como variable

    t=t+(toMeters(cortes)/toMetersPerSecond(q)); %revalorizamos el valor de T

    end

  estimatedTime=t; %datos de salida e la función

 end