clc
clear all

vuelta=1;
for carretera={'n1','a1'}
  for conductor={'1','2'}
    g=sprintf('%s-driver%s-log.csv',carretera{1},conductor{1});
     
    N=dlmread(g,',',0,0);
     
      pos=N(:,1);
      vel=N(:,2);
      titulo=sprintf('Pos y vel en los recorridos del conductor %s',conductor{1});
      
      PosVel=subplot(1,2,vuelta);
      hold on
      plot(pos,vel)
      title(PosVel,titulo); %Titulo de la grafica 
      xlabel(PosVel,'Posicion(km)'); %Nombre del eje X
      ylabel(PosVel,'Velocidad (km/h)'); %Nombre del eje Y

      vuelta=vuelta+1;
      
  MeVel=sum(vel)/numel(vel); %Elevacion media N1
  stdVel= std(vel); %Desviacion estandar en N1
  MinVel=min(vel);%Elevacion minima en N1
  MaxVel=max(vel); %Elevacion maxima en N1
  fprintf('Estadisticas del conductor%s en la ruta %s: \nVelocidad media: %.2f (sd: %.2f) \nRango de velocidades: [%.2f, %.2f]\n\n',conductor{1},carretera{1},MeVel,stdVel,MinVel,MaxVel)

      end
      vuelta=1;  
  end
saveas(gcf,'route-elevations2.png') %Guardar imagen de la grafica
