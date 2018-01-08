%calculo del tiempo para cada conductor y ruta 
a = dlmread('a1-driver1-log.csv',',');
b = dlmread('a1-driver2-log.csv',',');
c = dlmread('n1-driver2-log.csv',',');
d = dlmread('n2-driver2-log.csv',',');

distancia_atopista_conductor1= a(:,1);
distancia_atopista_conductor2= b(:,1);
distancia_nacional_conductor1=c(:,1);
distancia_nacional_conductor2=d(:,1);


velocidad_atopista_conductor1= a(:,2);
velocidad_1= mean(velocidad_atopista_conductor1)
velocidad_atopista_conductor2= b(:,2);
mean(velocidad_atopista_conductor2)
velocidad_nacional_conductor1=c(:,2);
mean(velocidad_nacional_conductor1)
velocidad_nacional_conductor2=d(:,2);
mean(velocidad_atopista_conductor2)

distancia_fianl_1 = lenght(distancia_atopista_conductor1);
distancia_fianl_2 = lenght(distancia_atopista_conductor2);
distancia_fianl_3 = lenght(distancia_atopista_conductor1);
distancia_fianl_4 = lenght(distancia_atopista_conductor2);


tiempo_atopista_conductor1=
tiempo_atopista_conductor2= 
tiempo_nacional_conductor1=
tiempo_nacional_conductor2=
