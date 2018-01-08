%Este script analiza los perfiles de elevación de ambas rutas:
%
%Al ejecutar el script, se generará una gráfica que contenga dos
%subgráficas:
%
%1) La primera gráfica muestra las alturas de ambas rutas
%relativas, en metros, relativas a la distancia desde el origen, en
%kilómetros.
%
%2) La segunda gráfica muestra las rutas.
%
%Además, el script calcula y muestra como texto diferentes valores
%estadísticos de la ruta. Los valores mostrados son:
%-Altura media
%-Desviación estandar
%-Rango de alturas

clear
clc
Ruta={'a','n'};
for i=1:length(Ruta)
    b=sprintf('%s1-height.csv',Ruta{i});
    a=dlmread(b,',',1,0);
    
    subplot(1,2,1);
    hold on
    plot(a(:,4),a(:,3))
    title('Altura')
    xlabel('Distancia (kilometros)')
    ylabel('Altura (metros)')
    hold off
   
    subplot(1,2,2)
    hold on
    plot(a(:,2),a(:,1));
    title('Ruta')
    xlabel('Longitud')
    ylabel('Latitud')
    hold off
    legend(Ruta{i})
   
    disp(sprintf('\nEstadisticas de la ruta %s1:',Ruta{i}))
    Alturamedia=mean(a(:,3));
    sd=std(a(:,3));
    max1=max(a(:,3));
    min1=min(a(:,3));
    fprintf('Altura media: %.2f (sd: %.2f)\nRango de alturas: [%.2f, %.2f]\n',Alturamedia,sd,min1,max1);
end
subplot(1,2,1)
legend('a1','n1')
subplot(1,2,2)
legend('a1','n1')