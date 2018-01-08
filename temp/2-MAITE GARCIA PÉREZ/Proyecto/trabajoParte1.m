clc
clear

%Se leen los ficheros y se organizan dentro de 'tabla'
for ruta={'a1','n1'}
    ficheros=sprintf('%s-height.csv',ruta{1});
    tabla=dlmread(ficheros,',',1,0);
    latitudes=tabla(:,1) ;
    longitudes=tabla(:,2) ;
    alturas=tabla(:,3) ;
    distanciaOrigen=tabla(:,4);
    
    %Se configuran los ejes y las gráficas
    subplot(1,2,1) 
    hold on 
    title('Longitud vs Latitud')
    xlabel ('Longitud')
    ylabel ('Latitud')
    plot(longitudes,latitudes) 

    subplot(1,2,2) 
    hold on 
    title('Distancia al origen vs Altura')
    xlabel ('Distancia al origen')
    ylabel ('Altura')
    plot(distanciaOrigen, alturas) 
    
    %Se imprimen los datos por pantalla
    fprintf('Estadisticas de la ruta %s\n',ruta{1})
    longitud=length(alturas); %Cálculo dimensión del vector
    Hmedia= (sum(alturas))/longitud;%Cálculo de la media
    varianza=(sum((alturas-Hmedia).^2))/longitud;
    desviacion=sqrt(varianza);
    fprintf('Altura media: %2.f (sd:%2.f)\n',Hmedia,desviacion)
    
    hmin=min(alturas); 
    hmax=max(alturas);
    fprintf('Rango de alturas: [%2.f %2.f]\n\n',hmin,hmax)
end
