clc
%usamos dlmread para hallar los valores del archivo en excel.
A=dlmread('a1-height.csv',',',1,0);
%sacamos las variables de la matriz A usando(:,numero de variable).
Latitude=A(:,1);
Longitud=A(:,2);
Altura=A(:,3);
Distancia=A(:,4);
%usamos subplot para poner el grafico de 2x2 en la primera posicion.
subplot(2,2,1);
%ploteamosnuestras variables.
plot(Distancia,Altura);
%añadimos los titulos y el nombre de los ejes.
title('Altura y Distancia');
xlabel('Distancia(km)');
ylabel('Altura(m)');
%grid on sirve para que se muestren las rayas horizntales y verticales en el grafico.
grid on;
%realizamos lo mismo pero en el la posicion 2 y cambiando las variables.
subplot(2,2,2);
grafica=plot(Latitude,Longitud);
title('Latitude y Longitud');
xlabel('Longitud');
ylabel('Latitude');
grid on;
saveas(grafica,'route-elevations.png')
