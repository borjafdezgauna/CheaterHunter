clear
clc

%leemos los archivos
autopista=csvread('a1-height.csv', 1);
nacional=csvread('n1-height.csv', 1);

%sacamos las gráficas
subplot(2,2,1)
plot(autopista(:,4),autopista(:,3),'g-') 
title('Alturas autopista');
xlabel('distancia origen (km)');
ylabel('elevación (m)');

subplot(2,2,2)
plot(nacional(:,4),nacional(:,3),'g-')
title('Alturas nacional');
xlabel('distancia origen (km)');
ylabel('elevación (m)');

subplot(2,2,3)
plot(autopista(:,2),autopista(:,1),'c-')
title('Ruta autopista');
xlabel('longitud');
ylabel('latitud');

subplot(2,2,4)
plot(nacional(:,2),nacional(:,1),'c-')
title('Ruta autopista');
xlabel('longitud');
ylabel('latitud');

%calculamos los valores estadísticos para la autopista
alturamedia1=mean(autopista(:,3));
desviacion1=std(autopista(:,3));
alturamax1=max(autopista(:,3));
alturamin1=min(autopista(:,3));
rutaautopista1=sprintf('%s\n%s: %d  (%s:%d)\n%s: [%d  %d]', 'La estadística de la ruta a1:','Altura media', alturamedia1, 'sd',desviacion1, 'Rango de alturas', alturamin1, alturamax1) 

%calculamos los valores estadísticos para la nacional
alturamedia2=mean(nacional(:,3));
desviacion2=std(nacional(:,3));
alturamax2=max(nacional(:,3));
alturamin2=min(nacional(:,3));
rutanacional1=sprintf('%s\n%s: %d  (%s:%d)\n%s: [%d  %d]', 'La estadística de la ruta n1:','Altura media', alturamedia2, 'sd',desviacion2, 'Rango de alturas', alturamin2, alturamax2) 