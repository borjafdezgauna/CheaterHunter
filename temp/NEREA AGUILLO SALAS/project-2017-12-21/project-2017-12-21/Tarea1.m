autopista=dlmread('a1-height.csv');
nacional=dlmread('n1-height.csv');

latitud=autopista(:,1);
longitud=autopista(:,2);
altura=autopista(:,3);
distancia=autopista(:,4);

latitud2=nacional(:,1);
longitud2=nacional(:,2);
altura2=nacional(:,3);
distancia2=nacional(:,4);

subplot(1,2,1)
alturas=plot(distancia,altura,distancia2,altura2);
ylabel('altura')
xlabel('distancia')
title('Alturas respecto distancia')
subplot(1,2,2)
latitudes=plot(longitud,latitud,longitud2,latitud2);
ylabel('latitud')
xlabel('longitud')
title('Latitud respecto longitud')

