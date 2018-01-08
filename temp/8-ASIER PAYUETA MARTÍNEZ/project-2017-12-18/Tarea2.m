clc 
clear all
hold on

for ruta={'n1','a1'}
  lado=1;
      for conductor={'driver1','driver2'}
          f=sprintf('%s-%s-log.csv',ruta{1},conductor{1});%Metemos el nombre del archivo para driver1 y driver2
          fprintf('Estadisticas de %s\n',f);
          Datos1=dlmread(f,',',0,0);
          c2=Datos1(:,2); %Seleccionamos las velocidades
          c1=Datos1(:,1); %Seleccionamos las distancias
          subplot(1,2,lado)
          hold on
          xlabel distancias
          ylabel velocidades
          plot (c1,c2) %Graficamos velocidades y distancias

          
          %Estadisticas de la velocidad media de n1 y a1
          fprintf('Ruta: %s\n', ruta{1});
          M=mean(c2);
          fprintf('Velocidad media: %.2f   ',M); %Para dar dos decimales(%.2f)
          
          %Estadisticas de la desviación estándar de n1 y a1
          S=std(c2);
          fprintf('(sd: %.2f)\n',S); %Para dar dos decimales y salto de línea(%.2f\n)
          
           %Estadisticas del rango de velocidades de n1 y a1
          Min=min(c2);
          Max=max(c2);
          fprintf('Rango de velocidades: [%.2f , %.2f]\n\n',Min,Max); %Para dar dos decimales, dos valores y dos saltos de línea([%.2f , %.2f]\n\n)
          lado=2;
     end
    lado=1;
end