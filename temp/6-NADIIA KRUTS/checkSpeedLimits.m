function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
 
 format long;
  % Variables necesarias
  metrosexcedidos=0; %Es el acumulado de los metros que se va excediendo en velocidad

  
  
  % Interpolar para saber la velocidad en el punto Slice.
  % Esto lo hacemos entre todos los puntos registrados
  % Para ello utilizamos un for hasta el último km registrados
    for i=1:length(driverLogKm)-1
      
       % Sacamos la distancia entre los puntos registrados por el conductor
      pto_dist=toMeters(driverLogKm(i+1))-toMeters(driverLogKm(i));
       % dividimos el intervalo en numSlices  para saber la distancia entre ellos sub_int
      sl_dist=pto_dist/numSlices;
      sl_pto=toMeters(driverLogKm(i)); % Cargamos el primer punto del Slice

      % Sacamos la velocidad en cada punto del Slice
      % Para ello necesitamos pasar los metros y sus velocidades
      % llamamos a la función por cada Slice
      % ejemplo interpolateLinearly([0,1],[40,50], 10)
       
        for j=1:numSlices 
          
        %pasamos las velocidades y la distancia en m/s y en metros
        % y lo interpolamos

        velocidad=interpolateLinearly([toMeters(driverLogKm(i)) toMeters(driverLogKm(i+1))],[toMetersPerSecond(driverLogSpeed(i)) toMetersPerSecond(driverLogSpeed(i+1))],sl_pto);
 
        % comparamos con la velocidad que debería de ir, 
        % si sobrepasa, lo sumamos a MetrosExcedidos
        % para ello utilizamos la funcion interpolateToTheLeft
        % Pasando el vectorkm y vector velocidades, y el km del slice
        % la funcion interpolateToTheLeft nos devuelve la velocidad máxima de ese punto
 
        vlimite=interpolateToTheLeft(toMeters(limitKms),toMetersPerSecond(limitSpeeds),sl_pto);
 
            if (velocidad>vlimite)
            metrosexcedidos=metrosexcedidos+sl_dist;
            end
            
            
        % vamos al otro punto del slice, para ello sumamos la distancia al pto slice que tenemos
        sl_pto=sl_pto+sl_dist;

      end 
  
      kmsAboveSpeedLimit=metrosexcedidos/1000;
      percentAboveSpeedLimit=(kmsAboveSpeedLimit*100)/(driverLogKm(length(driverLogKm)));
      
        
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
end