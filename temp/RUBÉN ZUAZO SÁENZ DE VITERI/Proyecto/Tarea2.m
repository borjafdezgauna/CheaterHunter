% Tarea 2 completa:
clc
clear all

%Utilizamos 2 for para cargar los ficheros de datos con el dlmread con las
%variables de ruta y conductor.
ruta={'n1','a1'};
conductor={'driver1','driver2'};

for j= 1:length(conductor)
    for i=1:length(ruta)
        file=sprintf('%s-%s-log.csv',ruta{i},conductor{j});
        datos=dlmread(file,',',1,0);
   %Dentro del for con la funcion fprintf y con las fomrulas, conseguimos sacar por pantalla
   %las estadísticas que se requieren para esta tarea.
        fprintf('Estadistica del conductor %s ruta %s:\n',ruta{i},conductor{j})
        mediaVelocidad=mean(datos(:,2));
        desviacionEstandar=std(datos(:,2));
        fprintf('Velocidad media: %.2f (sd:%.2f)\n',mediaVelocidad,desviacionEstandar)
        minimoDeVelocidad=min(datos(:,2));
        maximoDeVelocidad=max(datos(:,2));
        fprintf('Rango de velocidades: [%.2f ,%.2f]\n\n',minimoDeVelocidad,maximoDeVelocidad)
   %Para obtener las dos gráficas de los diferentes conductores usamos una condición 
   %dentro del for para que en la misma gráfica aparezcan los datos del mismo conductor, ayudados por el uso de hold on y hold off       
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