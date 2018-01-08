
primera={'a','n'};                                                              % Creamos una matriz de car�cteres con a y n
segunda=[1,2];                                                                  % Creamos una matriz num�ricas
numSlices = input ('Introduce el numero de slices: ');                          % Pedimos el numero de slices (IMPORTANTE: Para que salgan los resultados del libro hay que introducir 10000)                                                                                                                          

for j=1:length (segunda)                                                        % Creamos una ciclo de bucle que se repite la longitud de segunda (2)
    for i=1:length (primera)                                                    % Creamos una ciclo de bucle que se repite la longitud de primera (2)
      
        a= sprintf ('%s1-driver%d-log.csv', primera {i},segunda(j));            % Creamos una cadena de caracteres  que var�a seg�n el numero de bucle en el que estamos
        datos=dlmread(a,',');                                                   % Guardamos en datos los valores de cada conductor en cada ruta (seg�n el numerodel bucle)
        datos(1,1)=0;                                                           % Asignamos a las dos columnas de la primera fila los valores 0 ya que en una faltaba
        datos(1,2)=0;
        kms=datos(:,1);                                                         % Guardamos los datos de la 1� columna en la variable kms para usarlos en la funci�n
        speedKmH = datos(:,2);                                                  % Guardamos los datos de la 2� columna en la variable speedKmH para usarlos en la funci�n
                 
       seconds= estimateTime (kms,speedKmH, numSlices);                         % Usamos la funci�n estimateTime para calcular el tiempo que tarda cada conductor en recorrer cada ruta y lo guardamos en la variable segundos
       
       hms = toHMS (seconds);                                                   % Usamos la funci�n toHMS para pasar el tiempo a horas, minutos y segundos
       
       fprintf ('Estimated time for driver%d in route %s1: %s \n', segunda (j), primera{i}, hms) % Mostramos los datos por pantalla
    end
       
end
        
    
