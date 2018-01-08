%Tarea 1: 1) Graficas de las alturas de ambas rutas y guardar la imagen.

clear
clc


datos_a1=dlmread('datos/a1-height-corregido.csv');
datos_n1=dlmread('datos/n1-height-corregido.csv');

subplot(1,2,1)
plot(datos_a1(:,4),datos_a1(:,3),'r',datos_n1(:,4),datos_n1(:,3),'b')
    xlabel('Distancia (km)')
    ylabel('Altitud (m)')
    title('Altitudes A-1 y N-1')
    legend('A-1','N-1', 'Location','southeast')
    
subplot(1,2,2)
plot(datos_a1(:,2),datos_a1(:,1),'r',datos_n1(:,2),datos_n1(:,1),'b')
    xlabel('Longitud')
    ylabel('Latitud')
    title('Rutas A-1 y N-1')
    legend('A-1','N-1', 'Location','southeast')

saveas(gcf,'route-elevations.png')  


%Tarea 1: 2) Calcular y mostrar como texto media, desviación estandard,
%            elevación máxima y mínima.

%Estadisticas A-1

media_alturas_a1=sum(datos_a1(:,3))/length(datos_a1(:,3));
desviacion_alturas_a1=std(datos_a1(:,3));
valor_min_a1=min(datos_a1(:,3));
valor_max_a1=max(datos_a1(:,3));

fprintf('Estadísticas de la ruta A-1:\n');
fprintf('Altura media: %.2f (sd: %.2f)\n',media_alturas_a1,desviacion_alturas_a1);
fprintf('Rango de altitudes:[%.2f, %.2f]\n',valor_min_a1,valor_max_a1);


%Estadisticas N-1

media_alturas_n1=sum(datos_n1(:,3))/length(datos_n1(:,3));
desviacion_alturas_n1=std(datos_n1(:,3));
valor_min_n1=min(datos_n1(:,3));
valor_max_n1=max(datos_n1(:,3));

fprintf('\nEstadísticas de la ruta N-1:\n');
fprintf('Altura media: %.2f (sd: %.2f)\n',media_alturas_n1,desviacion_alturas_n1);
fprintf('Rango de alturas:[%.2f, %.2f]\n',valor_min_n1,valor_max_n1);


    
    