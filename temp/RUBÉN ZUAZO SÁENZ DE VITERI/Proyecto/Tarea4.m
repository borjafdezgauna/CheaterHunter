clc
ruta={'n1','a1'};
conductor={'driver1','driver2'};
%Primero cargamos los datos de los ficheros con el dlmread.
 for j= 1:length(ruta)
  for k=1:length(conductor)
    file=sprintf('%s-%s-log.csv',ruta{j},conductor{k});
    datos=dlmread(file);
    km= datos(:,1);
    m =toMeters(km);
    speedKmH= datos(:,2);
    msSpeed =toMetersPerSecond(speedKmH);
    %Realizamos los cambios de unidades llamando a las diferentes funciones
    %elaboradadas para ello
    seconds=estimateTime(m,msSpeed,10000);
    hms=toHMS(seconds);  
    %El resultado de estimatedTime(el tiempo necesario para completar cada ruta por los diversos conductores) se situa en una cadena de caracteres de
    %por los diversos conductores) se situa en una cadena de caracteres de horas minutos y segundos. 
    fprintf('Estimated time for %s in route %s: %s\n',conductor{k},ruta{j},hms);
    %Con el fprintf sacamos por pantalla las estadisticas como se indica en
    %el enunciado
  end
end


