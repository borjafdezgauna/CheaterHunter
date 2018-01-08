%a1=dlmread('Proyecto-2017-11-23/a1-driver1-log.csv',',',1,0);
clc;
clear

     for ruta={'n1','a1'}
      for ruta={'n1','a1'}
      fichero1=sprintf('%s-driver1-log.csv',ruta{1});
      Velocidad=dlmread(fichero1,',',1,0);
      subplot(1,2,1);
      plot(Velocidad(:,1),Velocidad(:,2)); % lon-lat
      hold on
      %plot(Alturas1(:,2),Alturas1(:,1))
      ylabel('Distancia')
      xlabel('Velocidad')
      title('Conductor1')
      
      fichero2=sprintf('%s-driver2-log.csv',ruta{1});
      %a11=dlmread('Proyecto-2017-11-23/a1-driver2-log.csv',',',1,0);
      %n1=dlmread('Proyecto-2017-11-23/n1-driver1-log.csv',',',1,0);
      %n11=dlmread('Proyecto-2017-11-23/n1-driver2-log.csv',',',1,0);
    
      Velocidad=dlmread(fichero2,',',1,0);%Para n1,a1 cargo ficheros
      %Alturas1=dlmread('n1-driver1-log.csv',',',1,0);

      %subplot(Alturas(:,3),Alturas(:,4));
      subplot(1,2,2);
      hold on 
      plot(Velocidad(:,1),Velocidad(:,2)); % distancia y velocidad
      % plot(velocidad(:,2),velocidad(:,1));
      ylabel('Distancia')
      xlabel('Velocidad')
      title('Conductor2')
    
      A=Velocidad(:,1); %Con la columna 1 de cada fichero(Velocidad) calculamos los valores estadisticos      
      Media=mean(A);
      DesviacionEstandar = std(A);
      Maximo=max(A);
      Minimo=min(A);
      fprintf('Estadisticas de los conductores %s:\n Velocidad Media:%f\n Desviacion Estandar:%f\n Rango de Velocidades :[%.1f,%.1f]\n',ruta{1},Media,DesviacionEstandar,Minimo,Maximo)
      end
    end
