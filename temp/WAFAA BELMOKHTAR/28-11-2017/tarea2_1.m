a = dlmread('a1-driver1-log.csv', ',');
b = dlmread('a1-driver2-log.csv', ',');
distancia_origen1 = a(:,1);
velocidad1 = a(:,2);
distancia_origen2 = b(:,1);
velocidad2 = b(:,2);
subplot(1,2,1)
plot(distancia_origen1,velocidad1, distancia_origen2,velocidad2)
title('Gráfica Velocidad-Distancia')
xlabel('Distancia al origen (Km)')
ylabel('Velocidad (Km/h)')