clc
clear

for ruta={'a1','n1'}
    ficheros=sprintf('%s-height.csv',ruta{1});

    leefichero=dlmread(ficheros,',',1,0);
    
    Latitud=leefichero(:,1);
    Longitud=leefichero(:,2);
    Altura=leefichero(:,3);
    Distancia=leefichero(:,4);

    subplot(1,2,1)
    hold on
    Alturas=plot(Distancia, Altura);
    ylabel('altura')
    xlabel('distancia')
    title('alturas relativas a la distancia desde el origen')
    legend('A1 route','N1 route')

    subplot(1,2,2)
    hold on
    Latitudes=plot(Longitud, Latitud);
    ylabel('latitud')
    xlabel('longitud')
    title('longitudes contra latitudes')
    legend('A1 route','N1 route')
   
        [media,sd,rangomax,rangomin]=valoresestadisticos(Altura);
        fprintf('Estadisticas de la ruta %s\n Altura media:%f (sd.:%f)\n Rango de alturas:[%f-%f]\n\n',ruta{1},media, sd, rangomin, rangomax)
 
 
end

disp('pulse una tecla')    
pause

