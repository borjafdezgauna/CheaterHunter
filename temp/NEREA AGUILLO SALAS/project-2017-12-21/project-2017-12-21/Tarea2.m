velocidadAutopista=dlmread('a1-driver1-log.csv');
velocidadAutopista2=dlmread('a1-driver2-log.csv');
velocidadNacional=dlmread('n1-driver1-log.csv');
velocidadNacional2=dlmread('n1-driver2-log.csv');

distanciaA=velocidadAutopista(:,1);
distanciaA2=velocidadAutopista2(:,1);

velocidadA=velocidadAutopista(:,2);
velocidadA2=velocidadAutopista2(:,2);

distanciaN=velocidadNacional(:,1);
distanciaN2=velocidadNacional2(:,1);

velocidadN=velocidadNacional(:,2);
velocidadN2=velocidadNacional2(:,2);

subplot(1,2,1)
alturas=plot(distanciaA,velocidadA,distanciaA2,velocidadA2);
ylabel('velocidad')
xlabel('distancia')
title('Velocidad/distancia A')
subplot(1,2,2)
latitudes=plot(distanciaN,velocidadN,distanciaN2,velocidadN2);
ylabel('velocidad')
xlabel('distancia')
title('Velocidad/distancia N')