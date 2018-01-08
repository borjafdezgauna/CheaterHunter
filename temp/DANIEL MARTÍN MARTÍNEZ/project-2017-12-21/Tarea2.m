% Leemos los datos de los archivos y los guardamos en variables
primera={'a','n'}  ;                      % Creamos una matriz de car�cteres con a y n
segunda=[1,2];                            % Creamos una matriz num�ricas


for j=1:length (segunda)
    for i=1:length (primera)
        a= sprintf ('%s1-driver%d-log.csv', primera {i},segunda(j));
        datos=dlmread(a,',');
        datos(1,1)=0;                     % Asignamos a las dos columnas de la primera fila los valores 0 ya que en una faltaba
        datos(1,2)=0;
        subplot (1,2,segunda(j));         % Generar una gr�fica con dos subgr�ficas, una por cada conductor
        plot (datos(:,1),datos(:,2));
        xlabel ('Ruta')
        ylabel ('Velocidad')
        y= sprintf ('C%d', segunda (j));
        title (y)
        axis([0 200 0 140])               % Establecer valor m�nimo y m�ximo para los ejes x-y ya que las rutas tienen diferente dimensiones
        
        hold on                           % Mantener las gr�ficas de la primera ruta ploteadas y que las graficas de la segunda gr�fica no las sobreescriban.
        
        %Calcular valores estad�sticos
        media=mean(datos(:,2));           % Calcular la velocidad media
        desviacion=std(datos(:,2));       % Calcular la desviaci�n entandar
   
        max1=max(datos(:,2));             % Calcular la velocidad m�xima.
      
        min1=min(datos(:,2));             % Calcular la velocidad m�nima.
        
        fprintf ('Estadisticas del conductor %d de la ruta %s1: \n Velocidad media: %.2f (sd: %.2f) \n Rango de velocidades: [%.2f, %.2f] \n',segunda(j),primera {i},media, desviacion, min1, max1);      %Mostrar resultados por pantalla.
    end
end
              
% Guardar la gr�fica       
saveas (gcf,'route-speed','png');

