clc
clear all

for ruta={'a1','n1'}
  f=sprintf('%s-height.csv', ruta{1});
  M=dlmread(f,',',1,0); %para cargar un file de excel que no esta separado en columnas
  Lat=M(:,1);
  Lon=M(:,2);
  Ele=M(:,3);
  Dis=M(:,4);  %Latitud, Longitud, Elevacion, Distancia, Gradiente
  
    LatLon= subplot(1,2,2); % Right subplot
    hold on
    plot(Lat,Lon) %Plot de la grafica latitud-longitud
    title(LatLon,'Latitud y longitud de los recorridos') %Titulo de la grafica latitud-longitud    
    xlabel(LatLon,'Latitud') %Nombre del eje X de la grafica latitud-longitud
    ylabel(LatLon,'Longitud') %Nombre del eje Y de la grafica latitud-longitud
  
    DisEle= subplot(1,2,1); % Left subplot
    hold on
    plot(Dis,Ele) %Plot de la grafica distancia-elevacion
    title(DisEle,'Elevacion segun distancia de los recorridos') %Titulo de la grafica distancia-elevacion
    xlabel(DisEle,'Distancia (km)') %Nombre del eje X de la grafica distancia-elevacion
    ylabel(DisEle,'Elevacion (m)') %Nombre del eje Y de la grafica distancia-elevacion
 
  MeleN1=sum(Ele)/numel(Ele); %Elevacion media N1
  stdN1= std(Ele); %Desviacion estandar en N1
  MinEleN1=min(Ele);%Elevacion minima en N1
  MaxEleN1=max(Ele); %Elevacion maxima en N1
    
    fprintf('Estadisticas de la ruta %s:\nAltura media: %.2f (sd: %.2f)\nRango de alturas: [%.2f, %.2f]\n\n',ruta{1},MeleN1,stdN1,MinEleN1,MaxEleN1) 
    %Menu de datos
end
   saveas(gcf,'route-elevations.png') %Guardar imagen de la grafica
