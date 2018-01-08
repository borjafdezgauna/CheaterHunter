% Leemos los datos de los archivos y los guardamos en variables
primera={'a','n'} ;                    % Creamos una matriz de car�cteres con a y n

for i=1:length (primera)
        a= sprintf ('%s1-height.csv', primera {i});     % Esta cadena de caracteres nos sirve para leer el archivo
        d= sprintf ('%s1', primera {i});                % Esta cadena de caracteres nos sirve para mostrar texto al final
        datos=dlmread(a,',',2);                         % Comenzamos a guardar los archivos desde la segunda fila, ya que la primera es texto
        b=datos(:,3);                                   % Guardamos los datos de la 3 columna de 'datos' en b
        subplot (1,2,1);                                % Generar una gr�fico para dos subgraficas
        plot ((1:length (b)),b);                        % Generamos un subgrafico en la posici�n uno con la longuitud de b y los datos de b
        xlabel ('Ruta')                 
        ylabel ('Elevacion')
        title ('Altura')
        
        
        hold on                                         % Mantener las gr�ficas de la primera ruta y que las graficas de la segunda gr�fica no las sobreescriban.
        subplot (1,2,2);                                % Generar una gr�fica 
        plot (datos (:,2), datos (:,1))                 % Generamos un subgrafico en la posici�n dos con la longuitud de la segunda columna de 'datos' y los valores de la segunda columna de 'datos'
        xlabel ('Longitud')
        ylabel ('Latitud')
        title ('Ruta')
       
        %Calcular valores estad�sticos
        media=mean(datos(:,3));                         % Calcular la altura media
        desviacion=std(datos(:,3));                     % Calcular la desviaci�n entandar
   
        max1=max(datos(:,3));                           % Calcular la elevaci�n m�xima 
        min1=min(datos(:,3));                           % Calcular la elevaci�n m�nima
        hold on                                         % Para mantener las gr�ficas de la primera ruta ploteadas y que las graficas de la segunda gr�fica no las sobreescriban.
        
         fprintf ('Estadisticas de la ruta %s: \n Altura media: %.2f (sd: %.2f) \n Rango de alturas: [%.2f, %.2f] \n',d,media, desviacion, min1, max1);  %Mostrar resultados por pantalla.
end

% Guardar la gr�fica  
saveas (gcf,'route-elevations','png');