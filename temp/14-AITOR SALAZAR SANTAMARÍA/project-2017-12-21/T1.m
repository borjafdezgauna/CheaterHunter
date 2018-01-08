clear all
clc
%este scrips lee los ficheros de cada carretera y los graficas(distacia-altura y longitud-latitud)
for ruta = {'a1','n1'}
    %sprintf crea una cadena de caracteres para luego poder leer el fichero
    F=sprintf('%s-height.csv',ruta{1});
    
    %Autopista A1
    %dlmread: lee los ficheros y saca los vectores que se le piden
    %dlmread (fichero leido,'signo separacion',fila a partir de la que lee,columna apartir de la que lee)
    lectura_fichero = dlmread(F,',',1,0);
    %lectura_fichero: (numero de filas leidas,numero de columnas leidas)
    y1 = lectura_fichero(:,3); %Altura
    x1 = lectura_fichero(:,4); %Distancia
    y2 = lectura_fichero(:,2); %Latitud
    x2 = lectura_fichero(:,1); %Longitud

    %GRAFICA 1
    %grafica los vectores leidos anteriormente y los divide en dos graficas
    %subplot divide la grafica en dos graficas (subplot(numero de filas,numero de columnas,numero de la grafica))
    subplot(1,2,1)
    %hold on: retiene los vectores graficados en cada grafica
    hold on
    %plot:grafica la subgrafica 1
    plot(x1,y1)

    %GRAFICA 2    
    subplot(1,2,2)
    hold on
    %plot: grafica la subgrafica 2
    plot(x2,y2)
    
    %Altura media
    largo=length(y1);
    AlturaMedia = sum(y1)/largo;
    
    
    %Rango de altura
    minimo = min(y1);
    maximo = max(y1);
            
    %Desviacion estandar
    DesviacionEstandar= std(y1);
    
    %fprintf:crea una salida de diferentes variables
    %\n: salto de linea
    % %s:texto   %f:numero decimal   %d: numero entero  %.2f:dos decimales
    fprintf('Estadisticas de la ruta %s:\n',ruta{1})
    fprintf(' -Altura media= %.2f\n -Rango de altura= [%.2f,%.2f]\n',AlturaMedia,minimo,maximo)
    fprintf(' -Desviacion estandar= %.2f\n\n',DesviacionEstandar)
end

%GRAFICA 1
subplot(1,2,1)
xlabel('Distancia(km)')
ylabel('Altura(m)')
title('Grafica(Distancia-Altura)')
legend('A1','N1')
%xlabel: eje X
%ylabel: eje Y
%title: titulo
%legend: leyenda

%GRAFICA 2
subplot(1,2,2)
xlabel('Longitud')
ylabel('Latitud')
title('Grafica(Longitud-Latitud)')
legend('A1','N1')

