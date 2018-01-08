function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)

 slice = (driverLogKm(end)-driverLogKm(1))/10000;
 %Distancia que tiene cada slice.
 kmsAboveSpeedLimit=0;
 %Damos un valor inicial 0 para esa funcion.
 x=linspace(driverLogKm(1),driverLogKm(end),numSlices);
 %x es el vector formado por Numslice valores desde el valor inicial hasta
 %el final de la distancia (en kms)recorrida por el conductor.
 for i=1:length(x)
     interpolatedY=interpolateLinearly(driverLogKm, driverLogSpeed , x(i));
     interpolatedLimitY=interpolateToTheLeft( limitKms, limitSpeeds , x(i));
     if interpolatedY > interpolatedLimitY        
             kmsAboveSpeedLimit= kmsAboveSpeedLimit+slice;
             %En esta condicion se calcula los kms recorridos por encima
             %del limite de velocidad sumado cada slice en el que ocurra
             %esto
         else

     end
         
 end
 percentAboveSpeedLimit=(kmsAboveSpeedLimit/driverLogKm(end))*100;
 %Esta es la ecuacion para calcular el porcentaje de los kilometros en los
 %que se ha sobrepasado el limite de velocidad con respecto al total.
end
    
 
