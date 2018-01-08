% dee momento inicia a1 y fallo n1
datos_a1=dlmread('a1-height.csv',',',1,0);
datos_n1=dlmread('n1-height.csv',',',1,0);
datos='%s1-height.csv'
for i=1:length(datos_a1) 
  
        distancia_a1=datos_a1(:,4)
        altura_a1=datos_a1(:,3)
        longitud_a1=datos_a1(:,2)
        latitud_a1=datos_a1(:,1)
        subplot(2,2,1)
        plot (distancia_a1,altura_a1)
        xlabel('DISTANCIA(Km)')
        ylabel('ALTURA(m)')
        title('ELEVACION A1')
        subplot(2,2,3)
        plot(longitud_a1,latitud_a1)
        xlabel('LONGITUD')
        ylabel('LATITUD')
        title('RUTA A1')
        end
          for j=1:length(datos_n1)
        distancia_n1=datos_n1(:,4)
        altura_n1=datos_n1(:,3)
        longitud_n1=datos_n1(:,2)
        latitud_n1=datos_n1(:,1)
        subplot(2,2,1)
        plot (distancia_n1,altura_n1)
        xlabel('DISTANCIA(Km)')
        ylabel('ALTURA(m)')
        title('ELEVACION A1')
        subplot(2,2,3)
        plot(longitud_n1,latitud_n1)
        xlabel('LONGITUD')
        ylabel('LATITUD')
        title('RUTA N1')
end

end
