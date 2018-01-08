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
subplot(1,2,1);
hold on
plot(d1,e1,'r');    %carretera a1
plot(d2,e2,'b');    %carretera n1
title('Subplot 1: Distancia,elevacion')

%----Gráfica (2) altitud-elevación------
subplot(1,2,2);
hold on
plot(a1,latitud1,'r');  %carretera a1
plot(a2,latitud2,'b');  %carretera n1
title('Subplot 2:latitud,altitud ')

%-------------Desviación estandard-------
DS=std(A);   %carretera a1
DS=DS(:,3);  
DS1=std(M);  %carretera n1
DS1=DS1(:,3);

%---------------Elevación Media----------
m = mean(A);  %carretera a1
m = m(:,3);
m1 = mean(M);  %carretera n1
m1 = m1(:,3);

%---------------Elevación Máxima---------
ma= max(A); %carretera a1
ma=ma(:,3);
ma1= max(M); %carretera n1
ma1=ma1(:,3);

%---------------Elevación Minima---------
mi= min(A); %carretera a1
mi=mi(:,3);
mi1= min(M); %carretera n1
mi1=mi1(:,3);

%-------------------Resultados-----------
fprintf('Estadísticas de la ruta n1: \n');
fprintf('Altura media: %.2f (ds:%.2f)\n', m, DS);
fprintf('Rango de alturas: [%.2f, %.2f]\n', mi, ma);

fprintf('\n Estadísticas de la ruta n1: \n');
fprintf('Altura media: %.2f (ds:%.2f)\n', m, DS1);
fprintf('Rango de alturas: [%.2f, %.2f]\n', mi1, ma1);