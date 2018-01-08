clear all
clc
hold on
for ruta={'n1','a1'}
    subplot(2,1,1)
    f=sprintf('%s-height.csv',ruta{1});
    a=dlmread(f,',',1,0); %carga el archivo de los datos
    c3=a(:,3);
    c4=a(:,4);
    
   
    title('Elevaci�n')
    xlabel('distancia (d)'); %T�tulo para el eje x
    ylabel('elevaci�n (h)'); %T�tulo para el eje y
    plot(c4,c3);
    hold on
   
    subplot(2,1,2);
    hold on
    c2=a(:,2);
    c1=a(:,1);
    
    title('Coordenadas');
    xlabel('longitud (m)'); %T�tulo para el eje x
    ylabel('Latitud'); %T�tulo para el eje y
    plot(c2,c1);
   
   
    m=std(c3); %C�lculo de la desviaci�n est�ndar
    r=mean(c3); %C�lculo de la media de las alturas
    x=max(c3); %Obtenci�n del valor m�ximo
    d=min(c3); %Obtenci�n del valor m�nimo
    fprintf('\nEstad�sticas de la ruta %s:',ruta{1})
    fprintf('\nAltura media:  %.2f (sd: %.2f)',r,m)
    fprintf('\nRango de alturas: [%.2f,%.2f]\n',d,x)
    
end
saveas(gcf,'route-elevations.png')
