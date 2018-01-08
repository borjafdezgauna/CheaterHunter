%Tarea 2: 1) Gráficas de las velocidades de ambos conductores en ambas rutas
%         respecto a la distancia recorrida.

clear
clc

conductor1_a1=dlmread('datos/a1-driver1-log.csv');
conductor2_a1=dlmread('datos/a1-driver2-log.csv');

conductor1_n1=dlmread('datos/n1-driver1-log.csv');
conductor2_n1=dlmread('datos/n1-driver2-log.csv');

%Cambiar tamaño de los plot a 800x600
set(0,'defaultfigureposition', [0 0 800 600])

subplot(1,2,1);
plot(conductor1_a1(:,1),conductor1_a1(:,2),'r',conductor2_a1(:,1),conductor2_a1(:,2),'b');
    xlabel('Distancia (km)')
    ylabel('Velocidad (km/h)')
    title('Conductores A1')
    legend('Conductor 1','Conductor 2', 'Location','southeast')
    
    
subplot(1,2,2)
plot(conductor1_n1(:,1),conductor1_n1(:,2),'r',conductor2_n1(:,1),conductor2_n1(:,2),'b');
    xlabel('Distancia (km)')
    ylabel('Velocidad (km/h)')
    title('Conductores N1')
    legend('Conductor 1','Conductor 2', 'Location','southeast')
    
%Mover la imagen del plot al centro de la pantalla.    
movegui('center')     
saveas(gcf,'routes-speed.png') 





