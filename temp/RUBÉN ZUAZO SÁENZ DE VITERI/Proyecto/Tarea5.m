clc
ruta={'n1','a1'};
conductor={'driver1','driver2'};

 for j= 1:length(ruta)
  for k=1:length(conductor)
    file=sprintf('%s-%s-log.csv',ruta{j},conductor{k});
    datos=dlmread(file);
    driverLogKm= datos(:,1);
    driverLogSpeed= datos(:,2);   
    archivo= sprintf('%s-speed-limit.csv',ruta{j});
    limites=dlmread(archivo);
    limitKms=limites(:,1);
    limitSpeeds=limites(:,2);
    
    %Se cargan los 4 archivos de velocidad y distancia de los dos
    %conducotre en las dos rutas y los otros dos archivos de datos en los
    %que se especifica el limite de velocidad de cada ruta.
    
    [ kmsAboveSpeedLimit,percentAboveSpeedLimit ]=checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, 10000);
    
    if percentAboveSpeedLimit==0
          fprintf('Analyzing: Driver= %s, Route= %s\n No risk of infraction\n',conductor{k},ruta{j});
    elseif percentAboveSpeedLimit<10
          fprintf('Analyzing: Driver= %s, Route= %s\n Mild infraction risk: Kms abover the speed limit= %.2f (%.2f%c of the route)\n',conductor{k},ruta{j},kmsAboveSpeedLimit,percentAboveSpeedLimit,'%');
    else
        fprintf('Analyzing: Driver= %s, Route= %s\n HIGH INFRACTION RISK: Kms abover the speed limit= %.2f (%.2f%c of the route)\n',conductor{k},ruta{j},kmsAboveSpeedLimit,percentAboveSpeedLimit,'%');
    end
    
    %Estas son las condiciones para no riesgo, riesgo leve y riesgo alto y
    %sus correspondientes fprintf para la salida de las estadisticas 
   
  end
  
 end
 



