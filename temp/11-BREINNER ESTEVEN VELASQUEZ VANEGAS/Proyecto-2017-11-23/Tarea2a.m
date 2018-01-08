%a1=dlmread('Proyecto-2017-11-23/a1-driver1-log.csv',',',1,0);
clc
clear
     for ruta={'n1','a1'}
      for ruta={'n1','a1'}
      fichero1=sprintf('%s-driver1-log.csv',ruta{1});
      Velocidad=dlmread(fichero1,',',1,0);
      
      subplot(1,2,1);
      plot(Velocidad(:,1),Velocidad(:,2)); % Velocidad contra distancia
      hold on
      
      ylabel('Distancia')
      xlabel('Velocidad')
      title('Conductor1')
      
      fichero2=sprintf('%s-driver2-log.csv',ruta{1});
      
      Velocidad=dlmread(fichero2,',',1,0);%Para n1,a1 cargo ficheros
          
      subplot(1,2,2);
      hold on 
      plot(Velocidad(:,1),Velocidad(:,2));  % Velocidad contra distancia
      
      ylabel('Distancia')
      xlabel('Velocidad')
      title('Conductor2')
      V=Velocidad(:,1); %Con la columna 1 de cada fichero(Velocidades) calculamos los valores estadisticos      
      Media=mean(V);
      Maximo=max(V);
      Minimo=min(V);
      fprintf('Estadisticas de la Ruta %s:\n Velocidad Media:%f\n  Rango de Velocidad :[%.1f,%.1f]\n',ruta{1},Media,Minimo,Maximo)
      %Sacamos por pantalla dichos valores 
     end
    end
