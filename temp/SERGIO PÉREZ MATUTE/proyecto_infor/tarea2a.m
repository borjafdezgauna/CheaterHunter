clc
clear all
velocidad_d1a1=dlmread('a1-driver1-log.csv',',',1,0);
% cargamos el archivo a1-driver1-log.csv desde la primera fila hasta la
% ultima,poniendo como divisor del vector una coma en la funciion dlmread
velocidad_d2a1=dlmread('a1-driver2-log.csv',',',1,0);
% cargamos el archivo a1-driver2-log.csv desde la primera fila hasta la
% ultima,poniendo como divisor del vector una coma en la funciion dlmread
subplot(2,2,1)
plot(velocidad_d1a1(:,1),velocidad_d1a1(:,2))
title('distacia vs velocidad a1 conductor 1')
xlabel('distancia(km)')
ylabel('velocidad (km/h)')
subplot(2,2,2)
plot(velocidad_d2a1(:,1),velocidad_d2a1(:,2))
title('distacia vs velocidad a1 conductor 2')
xlabel('distancia(km)')
ylabel('velocidad (km/h)')
velocidad_d1n1=dlmread('n1-driver1-log.csv',',',1,0);
% cargamos el archivo n1-driver1-log.csv desde la primera fila hasta la
% ultima,poniendo como divisor del vector una coma en la funciion dlmread
velocidad_d2n1=dlmread('n1-driver2-log.csv',',',1,0);
% cargamos el archivo n1-driver2-log.csv desde la primera fila hasta la
% ultima,poniendo como divisor del vector una coma en la funciion dlmread
subplot(2,2,3)
plot(velocidad_d1n1(:,1),velocidad_d1n1(:,2))
title('distacia vs velocidad a1 conductor 1')
xlabel('distancia(km)')
ylabel('velocidad (km/h)')
subplot(2,2,4)
plot(velocidad_d2n1(:,1),velocidad_d2n1(:,2))
title('distacia vs velocidad a1 conductor 2')
xlabel('distancia(km)')
ylabel('velocidad (km/h)')
