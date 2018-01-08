clc

% TAREA 1 (está tarea a veces da problemas al ejecutarlo en matalb)

for ruta={'a1','n1'}
    filename = sprintf('%s-height.csv',ruta{1}) ;
    M = dlmread (filename,',',1,0);
     
      latitud=M(:,1);
      longitud=M(:,2);
      elevacion=M(:,3);
      distancia= M(:,4);
      gradiante=M(:,5);
            
      subplot(1,2,1);
      
    hold on

    p1 = plot(distancia,elevacion);

    ylabel('x');
    xlabel('y');
    title('Distancia-Elevacion')

    subplot(1,2,2)
    
    hold on
    
    p2 = plot(longitud,latitud);
    
    ylabel('x');
    xlabel('y');
    title('Longitud-Latitud')
end

for ruta={'a1','n1'}
    filename = sprintf('%s-height.csv',ruta{1}) ;
    M = dlmread (filename,',',1,0);
    h=M(:,3);
    %Estadísticas de la ruta :
   
    Alturamedia =mean(h);
    desviacion =std(M(:,3));
    Rangodealturas=[min(M(:,3)),max(M(:,3))];
    
    fprintf('Ruta %s \n',ruta{1});
    fprintf('Altura media %.3f \n',Alturamedia);
    fprintf('Desviacion %.3f \n',desviacion);
    fprintf('Rango de alturas %.3f \n',Rangodealturas);
end
