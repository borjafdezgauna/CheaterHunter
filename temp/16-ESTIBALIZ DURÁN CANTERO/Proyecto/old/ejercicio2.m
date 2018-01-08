clf;
clc;
clear;
%------------------Datos----------------
M1 = dlmread('n1-driver1-log.csv');
M2 = dlmread('n1-driver2-log.csv');
A1 = dlmread('a1-driver1-log.csv');
A2 = dlmread('a1-driver2-log.csv');

kmn1=M1(:,1);    %km origen (1) n1
vn=M1(:,2);       %velocidad (1) n1

kma2=A2(:,1);    %km origen (1) a1
va2=A2(:,2);     %velocidad(1) a1

kmn2=M2(:,1);    %km origen (2) n1
vn2=M2(:,2);     %velocidad(2) n1

kma1=A1(:,1);   %km origen (2) a1
va=A1(:,2);     %velocidad(2) a1


%-----------------Graficas-------------
%----Gráfica (1) km-velocidad (nacional)----------
subplot(1,2,1);
hold on
plot(kmn1,vn,'r');    %conductor 1
plot(kmn2,vn2,'b');    %conductor 2
title('Subplot 1: km-velocidad (nacional)')

%----Gráfica (2) km-velocidad (autopista)------
subplot(1,2,2);
hold on
plot(kma1,va,'r');  %conductor 1
plot(kma2,va2,'b');  %conductor 2
title('Subplot 2:km-velocidad (autopista) ')

%-------------Desviación estandard-------
DS=std(A1);   %conductor 1 (autopista)
DS=DS(:,2);  
DS1=std(M1);  %conductor 1 (nacional)
DS1=DS1(:,2);

DS2=std(A2);   %conductor 2 (autopista)
DS2=DS2(:,2);  
DS3=std(M2);  %conductor 2 (nacional)
DS3=DS3(:,2);

%---------------Elevación Media----------
m = mean(A1);  %conductor 1 (autopista)
m = m(:,2);
m1 = mean(M1);  %conductor 1 (nacional)
m1 = m1(:,2);
m2 = mean(A2);  %conductor 2 (autopista)
m2 = m2(:,2);
m3 = mean(M2);  %conductor 2 (nacional)
m3 = m3(:,2);

%---------------Elevación Máxima---------
ma= max(A1); %conductor 1 (autopista)
ma=ma(:,2);
ma1= max(M1); %conductor 1 (nacional)
ma1=ma1(:,2);
ma2= max(A2); %conductor 2 (autopista)
ma2=ma2(:,2);
ma3= max(M2); %conductor 2 (nacional)
ma3=ma3(:,2);

%---------------Elevación Minima---------
mi= min(A1); %conductor 1 (autopista)
mi=mi(:,2);
mi1= min(M1); %conductor 1 (nacional)
mi1=mi1(:,2);
mi2= min(A2); %conductor 2 (autopista)
mi2=mi2(:,2);
mi3= min(M2); %conductor 2 (nacional)
mi3=mi3(:,2);

%-------------------Resultados-----------
fprintf('Estadísticas del conductor1 en la ruta n1: \n');
fprintf('velocidades media: %.2f (ds:%.2f)\n', m1, DS1);
fprintf('Rango de velocidades: [%.2f, %.2f]\n', mi1, ma1);

fprintf('\n Estadísticas del conductor2 en la ruta n1: \n');
fprintf('velocidades media: %.2f (ds:%.2f)\n', m3, DS3);
fprintf('Rango de velocidades: [%.2f, %.2f]\n', mi3, ma3);

fprintf('\n Estadísticas del conductor1 en la ruta a1: \n');
fprintf('velocidades media: %.2f (ds:%.2f)\n', m, DS);
fprintf('Rango de velocidades: [%.2f, %.2f]\n', mi, ma);

fprintf('\n Estadísticas del conductor2 en la ruta a1: \n');
fprintf('velocidades media: %.2f (ds:%.2f)\n', m2, DS2);
fprintf('Rango de velocidades: [%.2f, %.2f]\n', mi2, ma2);