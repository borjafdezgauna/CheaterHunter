
primera={'a','n'};                                                              % Creamos una matriz de carácteres con a y n
segunda=[1,2];                                                                  % Creamos una matriz numéricas
numSlices = input ('Introduce el numero de slices: ');                          % Pedimos el numero de slices (IMPORTANTE: Para que salgan los resultados del libro hay que introducir 10000)                                                                                                                          

for j=1:length (segunda)                                                        % Creamos una ciclo de bucle que se repite la longitud de segunda (2)
    for i=1:length (primera)                                                    % Creamos una ciclo de bucle que se repite la longitud de primera (2)
      
        a= sprintf ('%s1-driver%d-log.csv', primera {i},segunda(j));            % Creamos una cadena de caracteres  que varía según el numero de bucle en el que estamos
        datos=dlmread(a,',');                                                   % Guardamos en datos los valores de cada conductor en cada ruta (según el numerodel bucle)
        datos(1,1)=0;                                                           % Asignamos a las dos columnas de la primera fila los valores 0 ya que en una faltaba
        datos(1,2)=0;
        kms=datos(:,1);                                                         % Guardamos los datos de la 1º columna en la variable kms para usarlos en la función
        speedKmH = datos(:,2);                                                  % Guardamos los datos de la 2º columna en la variable speedKmH para usarlos en la función
                 
       seconds= estimateTime (kms,speedKmH, numSlices);                         % Usamos la función estimateTime para calcular el tiempo que tarda cada conductor en recorrer cada ruta y lo guardamos en la variable segundos
       
       hms = toHMS (seconds);                                                   % Usamos la función toHMS para pasar el tiempo a horas, minutos y segundos
       
       fprintf ('Estimated time for driver%d in route %s1: %s \n', segunda (j), primera{i}, hms) % Mostramos los datos por pantalla
    end
       
end
        
    
