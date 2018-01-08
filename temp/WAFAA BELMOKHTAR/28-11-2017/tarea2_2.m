

c=dlmread('n1-driver1-log.csv',',');
velocidadMediaN1=mean(c(:,2));
desviacionEstandarN1=std(c(:,2));
minimoN1=min(c(:,2));
maximoN1=max(c(:,2));
fprintf('Estadisticas del conductor1 por la n1:\nVelocidad media:%.2f(sd:% .2f)\nRango de las velocidades[% .2f,% .2f]\n',velocidadMediaN1,desviacionEstandarN1,minimoN1,maximoN1);

d=dlmread('n1-driver2-log.csv',',');
velocidadMediaN2=mean(d(:,2));%no se porque no funciona la maldita media
desviacionEstandarN2=std(d(:,2));
minimoN2=min(d(:,2));
maximoN2=max(d(:,2));
fprintf('Estadisticas del conductor2 por la n1:\nVelocidad media:%.2f(sd:% .2f)\nRango de las velocidades[% .2f,% .2f]\n',velocidadMediaN2,desviacionEstandarN2,minimoN2,maximoN2)


a=dlmread('a1-driver1-log.csv',',');
velocidadMediaA1=mean(a(:,2));
desviacionEstandarA1=std(a(:,2));
minimoA1=min(a(:,2));
maximoA1=max(a(:,2));
fprintf('Estadisticas del conductor1 en la ruta a1:\nVelocidad media:%.2f(sd:% .2f)\nRango de las velocidades[% .2f,% .2f]\n',velocidadMediaA1,desviacionEstandarA1,minimoA1,maximoA1)

b=dlmread('a1-driver2-log.csv',',');
velocidadMediaA2=mean(b(:,2));
desviacionEstandarA2=std(b(:,2));
minimoA2=min(b(:,2));
maximoA2=max(b(:,2));
fprintf('Estadisticas del conductor2 por la a1:\nVelocidad media:%.2f(sd:% .2f)\nRango de las velocidades[% .2f,% .2f]\n',velocidadMediaA2,desviacionEstandarA2,minimoA2,maximoA2)
