clc
clear all
ruta={'n1','a1'};
conductor={'driver1','driver2'};

for j= 1:length(conductor)
    for i=1:length(ruta)
        file=sprintf('%s-%s-log.csv',ruta{i},conductor{j});
        datos=dlmread(file,',',1,0);
        hold on

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