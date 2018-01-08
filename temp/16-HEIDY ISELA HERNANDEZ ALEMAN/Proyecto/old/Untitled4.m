clf;
clc;
clear;
%------------------Datos----------------
M = dlmread('n1-height.csv',',',1,0);
A = dlmread('a1-height.csv',',',1,0);

latitud1=M(:,1);    %latitud n1
a1=M(:,2);          %altitud n1
e1=M(:,3);          %elevación n1
d1=M(:,4);          %distancia n1

latitud2=A(:,1);    %latitud a1
a2=A(:,2);          %altitud a1
e2=A(:,3);          %elevación a1
d2=A(:,4);          %distancia a1

%-----------------Graficas-------------
%----Gráfica (1) distancia-altitud-----
grafica1=subplot(1,2,1);
hold on
plot(d1,e1,'r');    %carretera a1
plot(d2,e2,'b');    %carretera n1
title('Subplot 1: Distancia,elevacion')

%----Gráfica (2) altitud-elevación------
grafica2=subplot(1,2,2);
hold on
plot(a1,latitud1,'r');  %carretera a1
plot(a2,latitud2,'b');  %carretera n1
title('Subplot 2:latitud,altitud ')

for ruta={'M','A'}
    
end
%-------------------Resultados-----------
