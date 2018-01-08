clc
matrizA = dlmread('a1-height.csv',',',1,0);
Latitude= matrizA(:,1);
Latitudei= rot90(Latitude);
Latitudeinv = rot90(Latitudei);
Longitude = matrizA(:,2);
Elevation = matrizA(:,3);
Elevationi = rot90(Elevation);
Elevationinv = rot90(Elevationi);
Distance = matrizA(:,4);
Gradient = matrizA(:,5);

subplot(2,2,1);
plot(Distance,Elevationinv);
title('Elevation and Distance');
ylabel('Altura(m)');
xlabel('Distancia(km)');
grid on;

subplot(2,2,2)
plot(Latitudeinv,Longitude,'r');
title('Latitude and Longitude');
ylabel('Latitude');
xlabel('Longitude');
grid on;
