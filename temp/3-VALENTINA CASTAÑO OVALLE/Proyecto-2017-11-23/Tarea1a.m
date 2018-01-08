%a1=dlmread('Proyecto-2017-11-23/a1-driver1-log.csv',',',1,0);
clc;
clear

for ruta={'n1','a1'}
      fichero=sprintf('%s-height.csv',ruta{1});
      %a11=dlmread('Proyecto-2017-11-23/a1-driver2-log.csv',',',1,0);
      %n1=dlmread('Proyecto-2017-11-23/n1-driver1-log.csv',',',1,0);
      %n11=dlmread('Proyecto-2017-11-23/n1-driver2-log.csv',',',1,0);
      disp(fichero);
      Alturas=dlmread(fichero,',',1,0);%Para n1,a1 cargo ficheros
      %Alturas1=dlmread('n1-height.csv',',',1,0);

      %subplot(Alturas(:,3),Alturas(:,4));
      subplot(1,2,1);
      hold on 
      plot(Alturas(:,4),Alturas(:,3)); % distancia y altura
      %plot(Alturas1(:,4),Alturas1(:,3));
      ylabel('Distancia')
      xlabel('Altura')
      title('Grafica2')

      subplot(1,2,2);
      plot(Alturas(:,2),Alturas(:,1)); % lon-lat
      hold on
      %plot(Alturas1(:,2),Alturas1(:,1))
      ylabel('Latitud')
      xlabel('Longitud')
      title('Grafica1')

end