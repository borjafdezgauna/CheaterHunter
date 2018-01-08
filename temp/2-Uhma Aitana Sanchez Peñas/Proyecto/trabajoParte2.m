clc
clear
%Se leen los ficheros
for ruta={'a1','n1'}
    ad=1; %Para inicializar los subplots con el for
    for conductor={'-driver1','-driver2'}
        ficheros=sprintf('%s%s-log.csv',ruta{1},conductor{1});
        tabla=dlmread(ficheros,',')
    
        distanciaOrigen=tabla(:,1);
        velocidad=tabla(:,2);
        
        subplot(1,2,ad)
        hold on
        title('Velocidad máxima respecto origen')
        xlabel('Distancia desde el origen')
        ylabel('Velocidad')
        plot(distanciaOrigen,velocidad)
        ad=ad+1;
        
        %Se realizan los cálculos y se imprimen por pantalla
        fprintf('Estadisticas del conductor %s en la ruta %s\n',conductor{1},ruta{1});
        longitud=length(velocidad);
        vmedia=(sum(velocidad))/longitud;
        varianza=(sum((velocidad-vmedia).^2))/longitud;
        desviacion=sqrt(varianza);
        fprintf('Velocidad media: %2.f (sd: %2.f)\n',vmedia,desviacion);
        
        vmin=min(velocidad);
        vmax=max(velocidad);
        fprintf('Rango de velocidades: [%2.f %2.f]\n',vmin,vmax);
    end
end
