% Leemos los datos de los archivos y los guardamos en variables
primera={'a','n'} ;                    % Creamos una matriz de carácteres con a y n

for i=1:length (primera)
        a= sprintf ('%s1-height.csv', primera {i});     % Esta cadena de caracteres nos sirve para leer el archivo
        d= sprintf ('%s1', primera {i});                % Esta cadena de caracteres nos sirve para mostrar texto al final
        datos=dlmread(a,',',2);                         % Comenzamos a guardar los archivos desde la segunda fila, ya que la primera es texto
        b=datos(:,3);                                   % Guardamos los datos de la 3 columna de 'datos' en b
        subplot (1,2,1);                                % Generar una gráfico para dos subgraficas
        plot ((1:length (b)),b);                        % Generamos un subgrafico en la posición uno con la longuitud de b y los datos de b
        xlabel ('Ruta')                 
        ylabel ('Elevacion')
        title ('Altura')
        
        
        hold on                                         % Mantener las gráficas de la primera ruta y que las graficas de la segunda gráfica no las sobreescriban.
        subplot (1,2,2);                                % Generar una gráfica 
        plot (datos (:,2), datos (:,1))                 % Generamos un subgrafico en la posición dos con la longuitud de la segunda columna de 'datos' y los valores de la segunda columna de 'datos'
        xlabel ('Longitud')
        ylabel ('Latitud')
        title ('Ruta')
       
        %Calcular valores estadísticos
        media=mean(datos(:,3));                         % Calcular la altura media
        desviacion=std(datos(:,3));                     % Calcular la desviación entandar
   
        max1=max(datos(:,3));                           % Calcular la elevación máxima 
        min1=min(datos(:,3));                           % Calcular la elevación mínima
        hold on                                         % Para mantener las gráficas de la primera ruta ploteadas y que las graficas de la segunda gráfica no las sobreescriban.
        
         fprintf ('Estadisticas de la ruta %s: \n Altura media: %.2f (sd: %.2f) \n Rango de alturas: [%.2f, %.2f] \n',d,media, desviacion, min1, max1);  %Mostrar resultados por pantalla.
end

% Guardar la gráfica  
saveas (gcf,'route-elevations','png');