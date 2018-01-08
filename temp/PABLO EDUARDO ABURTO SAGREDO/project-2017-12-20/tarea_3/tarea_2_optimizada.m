%Tarea 2: 1) Gráficas de las velocidades de ambos conductores en ambas rutas
%         respecto a la distancia recorrida.

clear
clc

conductor1_a1=dlmread('datos/a1-driver1-log.csv');
conductor2_a1=dlmread('datos/a1-driver2-log.csv');

conductor1_n1=dlmread('datos/n1-driver1-log.csv');
conductor2_n1=dlmread('datos/n1-driver2-log.csv');

%Cambiar tamaño de los plot a 800x600
set(0,'defaultfigureposition', [0 0 800 600])

subplot(1,2,1);
plot(conductor1_a1(:,1),conductor1_a1(:,2),'r',conductor2_a1(:,1),conductor2_a1(:,2),'b');
    xlabel('Distancia (km)')
    ylabel('Velocidad (km/h)')
    title('Conductores A1')
    legend('Conductor 1','Conductor 2', 'Location','southeast')
    
    
subplot(1,2,2)
plot(conductor1_n1(:,1),conductor1_n1(:,2),'r',conductor2_n1(:,1),conductor2_n1(:,2),'b');
    xlabel('Distancia (km)')
    ylabel('Velocidad (km/h)')
    title('Conductores N1')
    legend('Conductor 1','Conductor 2', 'Location','southeast')
    
%Mover la imagen del plot al centro de la pantalla.    
movegui('center')     
saveas(gcf,'routes-speed.png') 


%Tarea 2: 2)Calcular y mostrar como texto media, desviación estandard,
%           elevación máxima y mínima.

a=0; %Contador de loops.
conductor=0;
name=' ';
c={[conductor1_a1(:,2) conductor2_a1(:,2)] [conductor1_n1(:,2) conductor2_n1(:,2)]};

for i=1:length(c)
        for j=c{i}
            a=(a+1);
            media_velocidades=sum(j)/length(j);
            desviacion_velocidades=std(j);
            valor_min_velocidades=min(j);
            valor_max_velocidades=max(j); 
            if a==1
                name='A-1';
                conductor=1;
            elseif a==2
                name='A-1';
                conductor=2;
            elseif a==3
                name='N-1';
                conductor=1;
            else
                name='N-1';
                conductor=2;
            end
            fprintf('\nEstadísticas del conductor %d la ruta %s:\n',conductor,name);
            fprintf('Velocidad media: %.2f (sd: %.2f)\n',media_velocidades,desviacion_velocidades);
            fprintf('Rango de alturas:[%.2f, %.2f]\n',valor_min_velocidades,valor_max_velocidades);
        end
end

