%Tarea 2: 1) Gráficas de las velocidades de ambos conductores en ambas rutas
%         respecto a la distancia recorrida.

clear
clc

conductor1_a1=dlmread('datos/a1-driver1-log.csv');
conductor2_a1=dlmread('datos/a1-driver2-log.csv');

conductor1_n1=dlmread('datos/n1-driver1-log.csv');
conductor2_n1=dlmread('datos/n1-driver2-log.csv');

distancia1_a1=conductor1_a1(:,1);
distancia2_a1=conductor2_a1(:,1);
distancia1_n1=conductor1_n1(:,1);
distancia2_n1=conductor2_n1(:,1);

velocidad1_a1=conductor1_a1(:,2);
velocidad2_a1=conductor2_a1(:,2);
velocidad1_n1=conductor1_n1(:,2);
velocidad2_n1=conductor2_n1(:,2);

subplot(1,2,1);
plot(distancia1_a1,velocidad1_a1,'r',distancia2_a1,velocidad2_a1,'b');
    xlabel('Distancia (km)')
    ylabel('Velocidad (km/h)')
    title('Conductores A1')
    legend('Conductor 1','Conductor 2', 'Location','southeast')
    
    
subplot(1,2,2)
plot(distancia1_n1,velocidad1_n1,'r',distancia2_n1,velocidad2_n1,'b');
    xlabel('Distancia (km)')
    ylabel('Velocidad (km/h)')
    title('Conductores N1')
    legend('Conductor 1','Conductor 2', 'Location','southeast')
    
saveas(gcf,'routes-speed.png') 


%Tarea 2: 2)Calcular y mostrar como texto media, desviación estandard,
%           elevación máxima y mínima.


%Estadísticas velocidad conductor 1 A-1

media_velocidad1_a1=sum(velocidad1_a1)/length(velocidad1_a1);
desviacion_velocidad1_a1=std(velocidad1_a1);
valor_min_velocidad1_a1=min(velocidad1_a1);
valor_max_velocidad1_a1=max(velocidad1_a1);

fprintf('Estadísticas del conductor 1 la ruta A-1:\n');
fprintf('Velocidad media: %.2f (sd: %.2f)\n',media_velocidad1_a1,desviacion_velocidad1_a1);
fprintf('Rango de alturas:[%.2f, %.2f]\n',valor_min_velocidad1_a1,valor_max_velocidad1_a1);



%Estadisticas velocidad conductor 2 por la A-1

media_velocidad2_a1=sum(velocidad2_a1)/length(velocidad2_a1);
desviacion_velocidad2_a1=std(velocidad2_a1);
valor_min_velocidad2_a1=min(velocidad2_a1);
valor_max_velocidad2_a1=max(velocidad2_a1);

fprintf('\nEstadísticas del conductor 2 la ruta A-1:\n');
fprintf('Velocidad media: %.2f (sd: %.2f)\n',media_velocidad2_a1,desviacion_velocidad2_a1);
fprintf('Rango de alturas:[%.2f, %.2f]\n',valor_min_velocidad2_a1,valor_max_velocidad2_a1);


%Estadisticas velocidad conductor 1 por la N-1

media_velocidad1_n1=sum(velocidad1_n1)/length(velocidad1_n1);
desviacion_velocidad1_n1=std(velocidad1_n1);
valor_min_velocidad1_n1=min(velocidad1_n1);
valor_max_velocidad1_n1=max(velocidad1_n1);

fprintf('\nEstadísticas del conductor 1 la ruta N-1:\n');
fprintf('Velocidad media: %.2f (sd: %.2f)\n',media_velocidad1_n1,desviacion_velocidad1_n1);
fprintf('Rango de alturas:[%.2f, %.2f]\n',valor_min_velocidad1_n1,valor_max_velocidad1_n1);


%Estadisticas velocidad conductor 2 por la N-1

media_velocidad2_n1=sum(velocidad2_n1)/length(velocidad2_n1);
desviacion_velocidad2_n1=std(velocidad1_n1);
valor_min_velocidad2_n1=min(velocidad1_n1);
valor_max_velocidad2_n1=max(velocidad1_n1);

fprintf('\nEstadísticas del conductor 1 la ruta A-1:\n');
fprintf('Velocidad media: %.2f (sd: %.2f)\n',media_velocidad2_n1,desviacion_velocidad2_n1);
fprintf('Rango de alturas:[%.2f, %.2f]\n',valor_min_velocidad2_n1,valor_max_velocidad2_n1);

    



