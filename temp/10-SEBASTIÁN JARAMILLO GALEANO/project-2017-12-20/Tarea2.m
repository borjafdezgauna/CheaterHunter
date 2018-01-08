%Tarea 2
 for conductor={'1','2'} % para nums. [1,2] y luego %d y solamente conductor
    lado=1;
    for ruta={'a1','n1'}
        filename = sprintf('%s-driver%s-log.csv',ruta{1},conductor{1}) ;
        M = dlmread(filename,',',0,0);
        d=M(:,1);
        v=M(:,2);
        %Estadísticas de la ruta :

        velocidadmedia=mean(v);


        fprintf('Ruta conductor %s %s \n',conductor{1},ruta{1});
        fprintf('Velocidad media %.3f \n',velocidadmedia);
        fprintf('Rango de velocidades [%.3f,%.3f] \n',min(v),max(v));

        subplot(1,2,lado);
        hold on
         plot(d,v);
         lado=lado+1;
    end
end