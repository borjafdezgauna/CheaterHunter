clear
clc
rutas = {'a1','n1'};
patron_entrada = 'Datos/%s-height.csv';
color = {'g', 'm'};

    for i = 1:length(rutas)
        file_name = sprintf(patron_entrada, rutas{i});
        datos = dlmread (file_name,',',1,0);

        fprintf('Estadísticas de la ruta %s:\n',rutas{i})
        fprintf('Altura media: %.2f (sd: %.2f)\n',mean(datos(:,3)), std(datos(:,3)))
        fprintf('Rango de las alturas: [%.2f, %.2f]\n\n',min(datos(:,3)),max(datos(:,3)))

        hold on
        subplot (1,2,1); 
        plot (datos (:,4), datos (:,3), color{i}) 
        xlabel('Distancia (km)')
        ylabel('Altura (m)')
        title('Altura de la ruta')
        legend('A1','N1');

        hold on
        subplot (1,2,2);
        plot (datos (:,2), datos(:,1), color{i}) 
        xlabel('Longitud (km)')
        ylabel('Latitud (m)')
        title('Posición')
        legend('A1','N1');
    end
saveas(gcf,'route-elevations.png');




