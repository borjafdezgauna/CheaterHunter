function [estimatedTime] = estimateTime( kms, speedKmH, numSlices)
  % Esta funci�n recibe un vector con la velocidad del veh�culo (speedKmH) en diferentes puntos (kms) y el
  % n�mero de pasos de integraci�n (numSlices)
  m=toMeters(kms);
  speedMS=toMetersPerSecond(speedKmH);
  n=m(end)/numSlices;
  tiempo=0;
  
    for i=m(1):n:m(end) 
        v=interpolateLinearly(m,speedMS,i);
            if v ~=0
                 tiempo=tiempo+(n/v);
            end
    end
    estimatedTime=tiempo;
    
end