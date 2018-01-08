
%Tarea 1 sin el for
 alturaRuta1=dlmread('a1-height.csv',',',1,0);
 alturaRuta2=dlmread('n1-height.csv',',',1,0);
 subplot(2,2,1)
 plot(alturaRuta1(:,4),alturaRuta1(:,3))
 xlabel('distancia(km)')
 ylabel('elevation(m)')
 title('autopista')

 subplot(2,2,2)
 plot(alturaRuta1(:,1),alturaRuta1(:,2))
 xlabel('latitud')
 ylabel('longitud')
 title('autopista')

 subplot(2,2,3)
 plot(alturaRuta2(:,4),alturaRuta2(:,3))
 xlabel('distancia(km)')
 ylabel('elevation(m)')
 title('nacional')

 subplot(2,2,4)
 plot(alturaRuta2(:,1),alturaRuta2(:,2))
 xlabel('latitud')
 ylabel('longitud')
 title('nacional')

 %como hacer altura media y su rango
fprintf('Estadistica de la ruta a1:\n');
alturaRuta1=dlmread('a1-height.csv',',',1,0);
media1=mean(alturaRuta1(:,3));
desviacionEstandar1=std(alturaRuta1(:,3));
fprintf('Altura media: %.2f (sd:%.2f)\n',media1,desviacionEstandar1)
minimoDeAltura=min(alturaRuta1(:,3));
maximoDeAltura=max(alturaRuta1(:,3));
fprintf('Rango de alturas: [%.2f ,%.2f]\n\n',minimoDeAltura,maximoDeAltura)

%copiar pegar para siguiente ruta
fprintf('Estadistica de la ruta n1:\n')
alturaRuta2=dlmread('n1-height.csv',',',1,0);
media2=mean(alturaRuta2(:,3));
desviacionEstandar2=std(alturaRuta2(:,3));
fprintf('Altura media: %.2f (sd:%.2f)\n',media2,desviacionEstandar2)
minimoDeAlturas=min(alturaRuta2(:,3));
maximoDeAlturas=max(alturaRuta2(:,3));
fprintf('Rango de alturas: [%.2f ,%.2f]\n',minimoDeAlturas,maximoDeAlturas)



 