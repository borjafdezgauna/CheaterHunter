% leemos los datos de los archivos y los guardamos en variables
primera={'a','n'}

for i=1:length (primera)
        hold on
        a= sprintf ('%s1-height.csv', primera {i})
        datos=dlmread(a,',',2);
        subplot (2,2,2);
        plot (datos (:,2), datos (:,1))
        xlabel ('Longitud')
        ylabel ('Latitud')
        title ('Ruta')
       

        a=datos(:,3);
        subplot (2,2,1);
        plot ((1:length (a)),a);
        xlabel ('Ruta')
        ylabel ('Elevacion')
        title ('Altura')
       
       
end
 
saveas (gcf,'route-elevations','png');


datosa1=dlmread('a1-height.csv',',',2);
datosn1=dlmread('n1-height.csv',',',2);



% Generamos una grafica con dos subgraficas
% La linea azul representa la ruta de la Autopista y la linea roja
% representa la ruta de la Nacional.

% De los dos archivos, la 1� columna son Latitudes y la 2� son Longitudes
subplot (2,2,2);
plot (datosa1 (:,2), datosa1 (:,1),datosn1 (:,2), datosn1 (:,1))
xlabel ('Longitud')
ylabel ('Latitud')
title ('Ruta')


a=datosa1(:,3);
b=datosn1(:,3);
subplot (2,2,1);
plot ((1:length (a)),a,'b',(1:length(b)),b,'r');
xlabel ('Ruta')
ylabel ('Elevacion')
title ('Altura')

% Vamos a guardar la imagen como "route-elevations.png"
saveas (gcf,'route-elevations','png');


% Calculamos los valores estadisticos.
mediaa1=mean(datosa1(:,3));
median1=mean(datosn1(:,3));


desviaciona1=std(datosa1(:,3));
desviacionn1=std(datosn1(:,3));


maxa1=max(datosa1(:,3));
mina1=min(datosa1(:,3));
maxn1=max(datosn1(:,3));
minn1=min(datosn1(:,3));


% Mostrar texto
fprintf ('Estadisticas de la ruta n1: \n Altura media: %.2f (sd: %.2f) \n Rango de alturas: [%.2f, %.2f] \n',median1, desviacionn1, minn1, maxn1);
fprintf ('Estadisticas de la ruta a1: \n Altura media: %.2f (sd: %.2f) \n Rango de alturas: [%.2f, %.2f] \n',mediaa1, desviaciona1, mina1, maxa1);