function [kmsAboveSpeedLimit,percentAboveSpeedLimit]=checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)


distancia_intervalo=max(driverLogKm)/numSlices; %Distancia recorrida en 1 intervalo.
j=0; %Nos valdrá para contar el numero de intervalos que ha recorrido por encima del limite, y así luego poder calcular la distancia total
     %recorrida sobre el limite de velocidad.

for i=1:numSlices
    
      distancia_recorrida=i*distancia_intervalo;  
      
      %Comprueba que la distancia recorrida se encuentra en el primer intervalo de los limites de velocidad.
      if distancia_recorrida>=0 && distancia_recorrida<limitKms(2) 
        %Interpola los limites de velocidad para saber cual es el que le corresponde actualmente. 
        limite_velocidad=interpolateToTheLeft(limitKms,limitSpeeds,distancia_recorrida); 
        %Calcula la velocidad que le corresponde a la distancia recorrida.
        velocidad=interpolateLinearly(driverLogKm,driverLogSpeed,distancia_recorrida); 
        
        if velocidad>limite_velocidad
            j=j+1;
        end
        
      %Comprueba que la distancia recorrida se encuentra en el segundo intervalo de limites de velocidad.  
      elseif distancia_recorrida>=limitKms(2) && distancia_recorrida<limitKms(3) 
        
        limite_velocidad=interpolateToTheLeft(limitKms,limitSpeeds,distancia_recorrida);
        velocidad=interpolateLinearly(driverLogKm,driverLogSpeed,distancia_recorrida);
        
        if velocidad>limite_velocidad
            j=j+1;
        end
        
      %Comprueba que la distancia recorrida se encuentra en el tercer intervalo de los limites de velocidad.  
      else 
        
        limite_velocidad=limitSpeeds(length(limitSpeeds));
        velocidad=interpolateLinearly(driverLogKm,driverLogSpeed,distancia_recorrida);
        
        if velocidad>limite_velocidad
            j=j+1;
        end
        
     end
end
%Ya sabiendo el numero de intervalos que ha recorrido por encima del limite de velocidad, calculamos los kms.     
kmsAboveSpeedLimit=j*distancia_intervalo;
percentAboveSpeedLimit=(kmsAboveSpeedLimit/max(driverLogKm))*100;
end