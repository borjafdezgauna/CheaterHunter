clc
matrizA = dlmread('a1-driver1-log.csv',',');
Tiempo = matrizA(:,1);
Tiempo1 = rot90(Tiempo);
Velocidad = matrizA(:,2);
Velocidad1 = rot90(Velocidad);
subplot(2,2,1);
plot(Tiempo',Velocidad');
title('Tiempo y Velocidad del primer conductor');
ylabel('Velocidad(km/h)');
xlabel('Tiempo(s)');

matrizB = dlmread('a1-driver2-log.csv',',');
TiempoB = matrizB(:,1);
TiempoB1 = rot90(TiempoB);
VelocidadB = matrizA(:,2);
VelocidadB1 = rot90(VelocidadB);
subplot(2,2,2);
plot(TiempoB1,VelocidadB1,'r');
title('Tiempo y Velocidad del segundo conductor');
ylabel('Velocidad(km/h)');
xlabel('Tiempo(s)');

