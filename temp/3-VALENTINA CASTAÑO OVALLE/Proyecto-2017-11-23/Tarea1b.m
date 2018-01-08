clc
clear
Media=0;
for ruta={'n1','a1'} %Ruta tienes los Ficheros de las n1(Ruta Nacional 1) y de a1(Ruta Autopista 1)
      fichero=sprintf('%s-height.csv',ruta{1});        
      Alturas=dlmread(fichero,',',1,0); %Se cargan los ficheros a1, n1
        
      subplot(1,2,1);
      hold on 
      plot(Alturas(:,4),Alturas(:,3)); % Grafica de Alturas Relativas a la Distancia 
     
      ylabel('Distancia')% Nombre de los Ejes y el titulo de la grafica
      xlabel('Altura')
      title('Grafica2')

      subplot(1,2,2);
      plot(Alturas(:,2),Alturas(:,1)); % Grafica de la longitud contra latitud
      hold on
      
      ylabel('Latitud')
      xlabel('Longitud')
      title('Grafica1')
      
      A=Alturas(:,3); %Con la columna 3 de cada fichero(Alturas) calculamos los valores estadisticos      
      Media=mean(A);
      DesviacionEstandar = std(A);
      Maximo=max(A);
      Minimo=min(A);
      fprintf('Estadisticas de la Ruta %s:\n Altura Media:%f\n Desviacion Estandar:%f\n Rango de Alturas :[%.1f,%.1f]\n',ruta{1},Media,DesviacionEstandar,Minimo,Maximo)
      %Sacamos por pantalla dichos valores 
end


