%Este script analiza los registros de ambas rutas para cada conductor.
%
%Primero generar� una gr�fica con dos subgr�ficas (una para cada
%conductor). Estas gr�ficas muestra las velocidades de ambas rutas
%relativas a la distancia desde el origen.
%
%Tambi�n muestra como texto diferentes valores
%estad�sticos de la ruta. Los valores mostrados son:
%-Velocidad media
%-Rango de velocidades

clear
clc
Ruta={'a','n'};
Conductor={'1','2'};

for i=1:length(Ruta)
    for j=1:length(Conductor)
        velocidad=sprintf('%s1-driver%s-log.csv',Ruta{i},Conductor{j});
        z=dlmread(velocidad,',');
        
        subplot(1,2,j)
        hold on
        plot(z(:,1),z(:,2));
        axis([0 200 0 140]);
        title('Registro velocidad')
        xlabel('Distancia km')
        ylabel('Velocidad km/h')
        hold off
        
        velocidad=mean(z(:,2));
        sd=std(z(:,2));
        minimo=min(z(:,2));
        maximo=max(z(:,2));
        disp(sprintf('\nEstad�sticas del conductor%s en la ruta %s1:',Conductor{j},Ruta{i}));
        fprintf('Velocidad media: %.2f (sd: %.2f)\nRango de velocidades[%.2f , %.2f]\n',velocidad,sd,minimo,maximo)   
    end
end
subplot(1,2,1)
legend('a1','n1')
subplot(1,2,2)
legend('a1','n1')