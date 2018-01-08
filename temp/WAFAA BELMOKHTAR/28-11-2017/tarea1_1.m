a = dlmread ('a1-height.csv', ',',1,0);
distancia1 = a(:,4);
elevation1=a(:,3);
longitud1=a(:,2);
latitud1=a(:,1);
b= dlmread('n1-height.csv', ',',1,0);
distancia2 = b(:,4);
elevation2=b(:,3);
longitud2=b(:,2);
latitud2=b(:,1);

subplot(1,2,1)
plot(distancia1,elevation1,distancia2,elevation2)
title('Altura-Distancial al origen')
xlabel('Distancia al origen (Km)')
ylabel('Altura (km)')


subplot(1,2,2)
plot(longitud1,latitud1,longitud2,latitud2)
title('Longitud-Latitud')
xlabel('Longitud (Km)')
ylabel('Latitud (Km)')