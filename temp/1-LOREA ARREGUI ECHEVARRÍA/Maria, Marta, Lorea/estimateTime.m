%Creamos una funcion llamada estimateTime 
function [estimatedTime]= estimateTime (kms, speedKmH, numslices)
  
  %Trabajamos con tramos, por ello divimos a todo el recorrido entre el numero de tramos que tenemos
  e=(kms(end)-kms(1))/numslices; 
  
  %Tiempo igual a 0 para empiece a contar desde el cero
  t=0;
  
  %Creamos un for para que recorra desde el primer km hasta el ultimo
  for i= kms(1):e:kms (end) 
      v=interpolateLinearly(kms, speedKmH, i);
      
  %Sumamos al tiempo inicial el tiempo que ha tardado en cada tramo y pasamos todo a las mismas unidades
      t= t +(e/v); 
     
      estimatedTime=t*3600;
  end
end