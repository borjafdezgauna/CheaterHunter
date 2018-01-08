%Para que no nos de problemas, limpiamos todo lo anterior con clc y clear 
clc
clear all

%Usamos un for para repetir la funcion las veces que se necesite, en este caso para ruta a1 y ruta n1
for ruta={'a1','n1'};
  
  driver=1;

%Ponemos otro for para hacer las medidas de los conductores
  for conduc=[1,2]
    
%Leemos el fichero 'driver' y le asignamos a nuestro dato "fichero" un documento
    fichero=sprintf('%s-driver%d-log.csv',ruta{1},conduc)
   disp(fichero)
   datos=dlmread(fichero,',',1,0);   % Leemos el fichero, lee el archivo separado por comas, y empieza a leer a partir de la primera fila
   
   velocidad=datos(:,2);             % Lee los datos de la primera columna
   distanciaOrigen=datos(:,1);       % Lee los datos de la segunda columna
   
   subplot(1,2,driver);              %Junta dos graficas en una 
   hold on                           %Mantiene la grafica
   title('conductor1');              %Titulo de la grafica
   ylabel('velocidad');              %Etiqueta del eje y
   xlabel('distanciaOrigen');        %Etiqueta del eje x
   plot(distanciaOrigen,velocidad);  %Hace la grafica con la velocidad y la distancia
   
%Sacamos por pantalla todos los datos de la funcion
    fprintf('Estadisticas del conductor%d en la ruta %s:\n',conduc, ruta{1});
    fprintf('Velocidad media: %2f (sd: %2.f)\n',mean(velocidad),std(velocidad));  %mean= media, std= desviacion estandar
    fprintf('Rango de velocidades: [%2.f %2.f]\n',min(velocidad),max(velocidad)); %min= minimo, max= maximo 
      %2.f = numero real con dos cifras
    
%Repetimos con el 2 conductor
   driver=driver+1;
   
   end 
  driver=1;

   end
   saveas(gcf,'T2.route-elevations.png');
   close
   