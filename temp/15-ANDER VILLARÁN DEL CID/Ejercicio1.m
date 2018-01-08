clear all
clc
hold on
for ruta={'n1','a1'}
    subplot(2,1,1)
    f=sprintf('%s-height.csv',ruta{1});
    a=dlmread(f,',',1,0); %carga el archivo de los datos
    c3=a(:,3);
    c4=a(:,4);
    
   
    title('Elevación')
    xlabel('distancia (d)'); %Título para el eje x
    ylabel('elevación (h)'); %Título para el eje y
    plot(c4,c3);
    hold on
   
    subplot(2,1,2);
    hold on
    c2=a(:,2);
    c1=a(:,1);
    
    title('Coordenadas');
    xlabel('longitud (m)'); %Título para el eje x
    ylabel('Latitud'); %Título para el eje y
    plot(c2,c1);
   
   
    m=std(c3); %Cálculo de la desviación estándar
    r=mean(c3); %Cálculo de la media de las alturas
    x=max(c3); %Obtención del valor máximo
    d=min(c3); %Obtención del valor mínimo
    fprintf('\nEstadísticas de la ruta %s:',ruta{1})
    fprintf('\nAltura media:  %.2f (sd: %.2f)',r,m)
    fprintf('\nRango de alturas: [%.2f,%.2f]\n',d,x)
    
end
saveas(gcf,'route-elevations.png')
