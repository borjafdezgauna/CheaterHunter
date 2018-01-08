clear all
clc
%algunos de los pasos estan explicados en la tarea 1
%este script lee los ficheros de cada conductor y los grafica (km-velocidad)
for conductor ={'1','2'}
    sp=1;
    for ruta = {'n1','a1'}
      c1=sprintf('%s-driver%s-log.csv',ruta{1},conductor{1});
      
      %Conductor 1
      lectura_fichero = dlmread(c1,',');
      y1 = lectura_fichero(:,2); %Velocidad
      x1 = lectura_fichero(:,1); %Distancia
    
      %GRAFICA 2
      subplot(1,2,sp)
      hold on
      plot(x1,y1)
    
      %Velocidad media
      largo = length(y1);
      VelocidadMedia = sum(y1)/largo;
    
      %Rango de velocidad
      minimo = min(y1);
      maximo = max(y1);
    
      %Desviacion estandar
      DesviacionEstandar= std(y1);
      sp=sp+1;
      
      fprintf('Estadisticas del conductor %s en la ruta %s:\n',conductor{1},ruta{1})
      fprintf(' -Velocidad media:%.2f\n',VelocidadMedia)
      fprintf(' -Rango velocidad:[%.2f %.2f]\n',minimo,maximo)
      fprintf(' -Desviacion estandar:%.2f\n\n',DesviacionEstandar)
    end      
end
 
%N1
subplot(1,2,1)
xlabel('Distancia(km)')
ylabel('Velocidad(km/h)')
title('N1')
legend('Conductor 1','Conductor 2')

%A1
subplot(1,2,2)
xlabel('Distancia(km)')
ylabel('Velocidad(km/h)')
title('A1')
legend('Conductor 1','Conductor 2')
