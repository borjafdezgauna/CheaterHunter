 v=dlmread('a1-height.csv',',',1,0);
altura1=v(:,3);
altura1=altura1';
distancia1=v(:,4);
distancia1=distancia1';
figure
subplot(2,1,1)
plot(distancia1,altura1)
title('Elevations')
xlabel('distancia')
ylabel('elevación')
hold on
c=dlmread('n1-height.csv',',',1,0);
altura2=c(:,3);
altura2=altura2';
distancia2=c(:,4);
distancia2=distancia2';
plot(distancia2,altura2)

latitud1=v(:,1);
latitud1=latitud1';
longitud1=v(:,2);
longitud1=longitud1';
subplot(2,1,2)
plot(longitud1,latitud1)
title('Cordenadas')
xlabel('longitud')
ylabel('latitud')
hold on
latitud2=c(:,1);
latitud2=latitud2';
longitud2=c(:,2);
longitud2=longitud2';
plot(longitud2,latitud2)
saveas(gcf,'Tarea1.png','jpg')
