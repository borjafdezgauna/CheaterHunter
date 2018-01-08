clc
clear all
archivo_a1=dlmread('a1-height.csv',',',1,0);
% cargamos el archivo a1_height desde la primera fila hasta la
% ultima,poniendo como divisor del vector una coma en la funciion dlmread
archivo_n1=dlmread('n1-height.csv',',',1,0);
% cargamos el archivo n1_height desde la primera fila hasta la
% ultima,poniendo como divisor del vector una coma en la funciion dlmread
subplot(2,2,1)
plot(archivo_a1(:,4),archivo_a1(:,3))
title('altura vs distancia autovia')
xlabel('distancia')
ylabel('altura')
subplot(2,2,2)
plot(archivo_n1(:,4),archivo_n1(:,3))
title('altura vs distancia nacional')
xlabel('distancia')
ylabel('altura')
subplot(2,2,3)
plot(archivo_a1(:,1),archivo_a1(:,2))
title('latitud vs longitud autovia')
xlabel('latitud')
ylabel('longitud')
subplot(2,2,4)
plot(archivo_n1(:,1),archivo_n1(:,2))
title('latitud vs longitud nacional')
xlabel('latitud')
ylabel('longitud')

