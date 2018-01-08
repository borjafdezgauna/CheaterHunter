clear
clc

%leemos los archivos
conductora1=csvread('a1-driver1-log.csv');
conductora2=csvread('a1-driver2-log.csv');
conductorn1=csvread('n1-driver1-log.csv');
conductorn2=csvread('n1-driver2-log.csv');

%sacamos las gráficas
subplot(2,2,1)
plot(conductora1(:,1), conductora1(:,2), 'm-')
title('velocidad conductor autopista 1');
xlabel('distancia origen (km)');
ylabel('velocidad (km/h)');

subplot(2,2,2)
plot(conductora2(:,1), conductora2(:,2), 'm-')
title('velocidad conductor autopista 2');
xlabel('distancia origen (km)');
ylabel('velocidad (km/h)');

subplot(2,2,3)
plot(conductorn1(:,1),conductorn1(:,2), 'y-')
title('velocidad conductor nacional 1');
xlabel('distancia origen (km)');
ylabel('velocidad (km/h)');

subplot(2,2,4)
plot(conductorn2(:,1),conductorn2(:,2), 'y-')
title('velocidad conductor nacional 2');
xlabel('distancia origen (km)');
ylabel('velocidad (km/h)');

%calculamos los valores estadísticos para el primer conductor de la autopista
velocidadmedia1=mean(conductora1(:,2));
desviacion1=std(conductora1(:,2));
velocidadmax1=max(conductora1(:,2));
velocidadmin1=min(conductora1(:,2));
ruta1=sprintf('%s\n%s: %d  (%s:%d)\n%s: [%d  %d]', 'Estadísticas del conductor1 en la ruta a1:','Velocidad media', velocidadmedia1, 'sd',desviacion1, 'Rango de velocidades', velocidadmin1, velocidadmax1) 


%calculamos los valores estadísticos para el segundo conductor de la autopista
velocidadmedia2=mean(conductora2(:,2));
desviacion2=std(conductora2(:,2));
velocidadmax2=max(conductora2(:,2));
velocidadmin2=min(conductora2(:,2));
ruta2=sprintf('%s\n%s: %d  (%s:%d)\n%s: [%d  %d]', 'Estadísticas del conductor2 en la ruta a1:','Velocidad media', velocidadmedia2, 'sd',desviacion2, 'Rango de velocidades', velocidadmin2, velocidadmax2) 


%calculamos los valores estadísticos para el primer conductor de la nacional
velocidadmedia3=mean(conductorn1(:,2));
desviacion3=std(conductorn1(:,2));
velocidadmax3=max(conductorn1(:,2));
velocidadmin3=min(conductorn1(:,2));
ruta3=sprintf('%s\n%s: %d  (%s:%d)\n%s: [%d  %d]', 'Estadísticas del conductor1 en la ruta n1:','Velocidad media', velocidadmedia3, 'sd',desviacion3, 'Rango de velocidades', velocidadmin3, velocidadmax3) 

%calculamos los valores estadísticos para el segundo conductor de la nacional
velocidadmedia4=mean(conductorn2(:,2));
desviacion4=std(conductorn2(:,2));
velocidadmax4=max(conductorn2(:,2));
velocidadmin4=min(conductorn2(:,2));
ruta4=sprintf('%s\n%s: %d  (%s:%d)\n%s: [%d  %d]', 'Estadísticas del conductor2 en la ruta n1:','Velocidad media', velocidadmedia4, 'sd',desviacion4, 'Rango de velocidades', velocidadmin4, velocidadmax4) 
