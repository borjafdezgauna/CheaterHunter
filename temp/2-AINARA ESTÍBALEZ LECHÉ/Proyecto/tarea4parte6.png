for ruta ={'a1','n1'}
    for conductor={'-driver1','-driver2'}
        ficheros=sprintf('%s%s-log.csv',ruta{1},conductor{1});
        tabla=dlmread(ficheros,',',1,0);
        
        kms=tabla(:,1);
        speedKmH=tabla(:,2);
        %Se leen los ficheros y se recogen en una tabla de la que, por
        %columnas, sacamos los datos
        numSlices=1000;%Se considera 1000 el número de partes en las que se dividen los datos
        tEstimado=estimateTime(kms,speedKmH, numSlices);%Se llama a la función de estimar el tiempo
        hms=toHMS(tEstimado);%Se llama a la función para que nos cambie de segundos a horas:minutos:segundos
        
        %Se imprime por pantalla
        fprintf('Tiempo estimado para %s en %s : ',conductor{1},ruta{1})
        fprintf('%s \n',hms)
    end
end
