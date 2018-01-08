function pintarInfraccion(conductor,ruta,kmEx,Porcentaje)
  
  fprintf('Analyzing: Driver=%s, Route=%s \n',conductor,ruta)
  
  if Porcentaje<10
    
    %riesgo minimo
    fprintf('Mild infraction risk: Kms abover the speed limit=%.2f (.2f of the route \n\n\n', kmEx,Porcentaje)
    
  elseif Porcentaje>10
    
    %riesgo alto
    fprintf('HIGH INFRACTION RISK: Kms abover the speed limimr= %.2f (%.2f of the route \n\n\n', kmEx,Porcentaje)
    
  elseif Porcentaje==0
    
    %en este caso es cero
     fprintf('No risk of infraction \n\n\n');
     
     end
   
end
    