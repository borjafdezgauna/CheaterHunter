M = dlmread('a1-height.csv','',1,0); %ya miraremos como quitar la primera fila.
latitud1=M(:,1);    %latitud
a1=M(:,2);          %altitud
e1=M(:,3);          %elevaci�n
d1=M(:,4);          %distancia

subplot(2,2,1); %grafica 1
plot(d1,e1);
title('Subplot 1: Distancia,elevacion')

subplot(2,1,2); %Grafica 2  
plot(latitud1,a1,'r');
plot()
title('Subplot 2:latitud,altitud ')