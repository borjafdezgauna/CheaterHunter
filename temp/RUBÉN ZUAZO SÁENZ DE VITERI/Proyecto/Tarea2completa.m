% Tarea 2 completa:
clc
clear all
ruta={'n1','a1'};
conductor={'driver1','driver2'};

for j= 1:length(conductor)
    for i=1:length(ruta)
        file=sprintf('%s-%s-log.csv',ruta{i},conductor{j});
        datos=dlmread(file,',',1,0);
        hold on
        
        fprintf('Estadistica del conductor %s ruta %s:\n',ruta{i},conductor{j})
        mediaVelocidad=mean(datos(:,2));
        desviacionEstandar=std(datos(:,2));
        fprintf('Velocidad media: %.2f (sd:%.2f)\n',mediaVelocidad,desviacionEstandar)
        minimoDeVelocidad=min(datos(:,2));
        maximoDeVelocidad=max(datos(:,2));
        fprintf('Rango de velocidades: [%.2f ,%.2f]\n\n',minimoDeVelocidad,maximoDeVelocidad)
                
        if j==1 
            subplot(2,1,1)
            plot(datos(:,1),datos(:,2))
            xlabel('distancia(km)')
            ylabel('velocidad(km/h)')
            title('Conductor 1')
            legend('n1','a1')
            hold off
        else
            subplot(2,1,2)
            plot(datos(:,1),datos(:,2))
            xlabel('distancia(km)')
            ylabel('velocidad(km/h)')
            title('Conductor 2')
            legend('n1', 'a1')
            hold off
        end   
        
    end
end