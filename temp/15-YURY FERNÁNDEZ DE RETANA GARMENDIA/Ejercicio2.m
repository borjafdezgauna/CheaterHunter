clear all
clc
hold on
for ruta={'n1','a1'}
    subplot(2,1,1)
    f=sprintf('%s-driver1-log.csv',ruta{1});
    a=dlmread(f,',',0,0); %carga el archivo de los datos
    distancia=a(:,1);
    velocidad=a(:,2);
    
    title('conductor 1');
    xlabel('distancia (d)'); %T�tulo para el eje x
    ylabel('velocidad (v)'); %T�tulo para el eje y
    plot(distancia,velocidad);
    hold on  
    
    subplot(2,1,2);
    y=sprintf('%s-driver2-log.csv',ruta{1});
    b=dlmread(y,',',0,0); %carga el archivo de los datos
    distancia2=b(:,1);
    velocidad2=b(:,2);
    hold on
 
    title('Conductor2 ');
    xlabel('distancia 2(m)'); %T�tulo para el eje x
    ylabel('velocidad 2'); %T�tulo para el eje y
    plot(distancia2,velocidad2);
   
    m=std(velocidad); %C�lculo de la desviaci�n est�ndar
    r=mean(velocidad); %C�lculo de la media de las velocidades
    x=max(velocidad); %Obtenci�n del valor m�ximo
    d=min(velocidad); %Obtenci�n del valor m�nimo
    fprintf('\nEstad�sticas del conductor 1 en la ruta %s:',ruta{1});
    fprintf('\nVelocidad media:  %.2f (sd: %.2f)',r,m);
    fprintf('\nRango de velocidades: [%.2f,%.2f]\n',d,x);
   
    m2=std(velocidad2); %C�lculo de la desviaci�n est�ndar
    r2=mean(velocidad2); %C�lculo de la media de las velocidades
    x2=max(velocidad2); %Obtenci�n del valor m�ximo
    d2=min(velocidad2); %Obtenci�n del valor m�nimo
    fprintf('\nEstad�sticas del conductor 2 en la ruta %s:',ruta{1});
    fprintf('\nVelocidad media:  %.2f (sd: %.2f)',r2,m2);
    fprintf('\nRango de velocidades: [%.2f,%.2f]\n',d2,x2);
   
    
end
saveas(gcf,'route-elevations.png')
