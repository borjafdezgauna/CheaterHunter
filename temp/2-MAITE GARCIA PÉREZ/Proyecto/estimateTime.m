function [ estimatedTime ] = estimateTime(kms, speedKmH, numSlices)
          t=0;%Iniciamos el tiempo en 0 
          e=(kms(length(kms))-kms(1))/numSlices;%Calculamos el espacio
          for x =linspace(kms(1), kms(length(kms)),numSlices) %Creamos un vector cogiendo los datos para la x
              v=interpolateLinearly(kms,speedKmH,x);%Interpolamos para sacar la velocidad
              t=t+(e/v);%Hallamos el tiempo como t=e/v
          end 
          estimatedTime=t*3600;%pasamos el tiempo a horas
end

        