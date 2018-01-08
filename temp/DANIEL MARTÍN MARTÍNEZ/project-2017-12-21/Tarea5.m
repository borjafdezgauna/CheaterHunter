
primera={'a','n'};
segunda=[1,2];
numSlices = input ('Introduce el numero de slices: ');                              % Pedimos el numero de slices (IMPORTANTE: Para que salgan los resultados del libro hay que introducir 10000)   

for i=1:length (primera)                                                            % Creamos una ciclo de bucle que se repite la longitud de primera (2)
     b= sprintf ('%s1-speed-limit.csv', primera {i});                               % Creamos una cadena de caracteres que varie segun la variable primera para conseguir el nombre del archivo
       datos1=dlmread(b);                                                           % En cada ciclo leemos los datos de velocidad y kms para cada ruta
       limitKms=datos1(:,1);                                                        % Le asignamos a limtKms la primera columna de los valores leidos
       limitSpeeds = datos1(:,2);                                                   % Le asignamos a limtSpeeds la segunda columna de los valores leidos
       
    for j=1:length (segunda)                                                        % Creamos una ciclo de bucle que se repite la longitud de segunda (2)
        a= sprintf ('%s1-driver%d-log.csv', primera {i},segunda(j));                % Creamos una cadena de caracteres que varie segun la variable primera y segunda para conseguir el nombre del archivo
        datos=dlmread(a,',');                                                       % En cada ciclo leemos los datos de velocidad y kms para cada ruta y para conductor
        datos(1,1)=0;                                                               % Asignamos a las dos columnas de la primera fila los valores 0 ya que en una faltaba
        datos(1,2)=0;
        driverLogKm=datos(:,1);                                                     % Le asignamos a driverLogKm la primera columna de los valores guardados en datos
        driverLogSpeed = datos(:,2);                                                % Le asignamos a driverLogSpeed la segunda columna de los valores guardados en datos
        [kmsAboveSpeedLimit,percentAboveSpeedLimit] =checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices);
                                                                                    % Llamamos a la función checkSpeedLimts y obtenemos los km recorridos por encima del limite de velocidad y el porcentaje de la ruta por encima del limite

       fprintf ('Analyzing: Driver= driver%.f, Route= %s1 Mild infraction risk: Kms abover the speed limit= %.f (%.1f percent of the route)\n',segunda(j), primera {i},kmsAboveSpeedLimit,percentAboveSpeedLimit )
    end                                                                             % Mostramos en pantalla los datos obtenidos
end


    