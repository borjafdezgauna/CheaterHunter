% dee momento inicia a1 y fallo n1
datos_a1=dlmread('a1-height.csv',',',1,0);
datos_n1=dlmread('n1-height.csv',',',1,0);

for i=1:length(datos_a1)
        %leer datos a1,n1
        distancia_a1=datos_a1(:,4)
        distancia_n1=datos_n1(:,4)
        altura_a1=datos_a1(:,3)
        altura_n1=datos_n1(:,3)
        longitud_a1=datos_a1(:,2)
        longitud_n1=datos_n1(:,2)
        latitud_a1=datos_a1(:,1)
        latitud_n1=datos_n1(:,1)
        %plotear altura vs distancia
        subplot(2,2,1)
        plot (distancia_a1,altura_a1,distancia_n1,altura_n1)
        xlabel('DISTANCIA(Km)')
        ylabel('ALTURA(m)')
        title('ELEVACION A1')
        %plotear latitud vs longitud
        subplot(2,2,2)
        plot(longitud_a1,latitud_a1,longitud_n1,latitud_n1)
        xlabel('LONGITUD')
        ylabel('LATITUD')
        title('RUTA A1')
end