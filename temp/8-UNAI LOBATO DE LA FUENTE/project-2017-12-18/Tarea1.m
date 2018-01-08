clc 
clear all
hold on

for ruta={'n1','a1'}
    f=sprintf('%s-height.csv',ruta{1});
    %Metemos el nombre del archivo para a1 y n1
    Datos1=dlmread(f,',',1,0);
    c3=Datos1(:,3); %Seleccionamos las elevaciones
    c4=Datos1(:,4); %Seleccionamos las distancias
    subplot(1,2,1)
    hold on
    xlabel distancias
    ylabel elevaciones
    plot (c4,c3) %Graficamos distancias y elevaciones

    c1=Datos1(:,1); %Seleccionamos las latitudes
    c2=Datos1(:,2); %Seleccionamos las longitudes
    subplot(1,2,2)
    hold on
    xlabel longitudes
    ylabel latitudes
    plot (c1,c2) %Graficamos latitudes y longitudes
    
    %Estadisticas de la altura media de n1 y a1
    fprintf('Ruta: %s\n', ruta{1});
    M=mean(c3);
    fprintf('Altura media: %.2f\n',M); %Para dar dos decimales y salto de línea(%.2f\n)
    
    %Estadisticas de la desviación estándar de n1 y a1
    S=std(c3);
    fprintf('(sd: %.2f)\n',S); %Para dar dos decimales y salto de línea(%.2f\n)
    
     %Estadisticas del rango de alturas de n1 y a1
    Min=min(c3);
    Max=max(c3);
    fprintf('Rango de alturas: [%.2f , %.2f]\n\n',Min,Max); %Para dar dos decimales, dos valores y dos saltos de línea([%.2f , %.2f]\n\n)
    
end