%Tarea 1: 1) Graficas de las alturas de ambas rutas y guardar la imagen.

clear
clc

datos_a1=dlmread('datos/a1-height-corregido.csv');
datos_n1=dlmread('datos/n1-height-corregido.csv');

%Cambiar tamaño de los plot a 800x600
set(0,'defaultfigureposition', [0 0 800 600]) 

subplot(1,2,1)
plot(datos_a1(:,4),datos_a1(:,3),'r-',datos_n1(:,4),datos_n1(:,3),'b-')
    xlabel('Distancia (km)')
    ylabel('Altitud (m)')
    title('Altitudes A-1 y N-1')
    legend('A-1','N-1', 'Location','southeast')
%Cambiar el rango de la grafica para mejor presentación.
    xlim([0 120])
    ylim([0 900])
    
subplot(1,2,2)
plot(datos_a1(:,2),datos_a1(:,1),'r-',datos_n1(:,2),datos_n1(:,1),'b-')
    xlabel('Longitud')
    ylabel('Latitud')
    title('Rutas A-1 y N-1')
    legend('A-1','N-1', 'Location','southeast')
%Cambiar el rango de la grafica para mejor presentación.
    xlim([-2.8 -1.9])
    ylim([42.8 43.4])
    
%Mover la imagen del plot al centro de la pantalla.    
movegui('center') 
saveas(gcf,'route-elevations.png') 


%Tarea 1: 2) Calcular y mostrar como texto media, desviación estandard,
%            elevación máxima y mínima.


name=' ';
c={datos_a1(:,3) datos_n1(:,3)};

for i=1:length(c)
   media_alturas=sum(c{i})/length(c{i});
   desviacion_alturas=std(c{i});
   valor_min=min(c{i});
   valor_max=max(c{i});  
     if i==1 %Comando if para cambiar nombre de ruta en cada bucle.
      name='A-1';
        else
         name='N-1';
     end  
   
   fprintf('\nEstadísticas de la ruta %s:\n',name);
   fprintf('Altitud media: %.2f (sd: %.2f)\n',media_alturas,desviacion_alturas);
   fprintf('Rango de altitudes:[%.2f, %.2f]\n',valor_min,valor_max);
end