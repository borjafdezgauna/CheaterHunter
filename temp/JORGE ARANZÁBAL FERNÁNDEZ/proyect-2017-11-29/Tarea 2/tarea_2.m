clear
clc
rutas = {'n1','a1'};
conductores={'driver1','driver2'};
patron_entrada = 'Datos/%s-%s-log.csv';
a = 1;
col = {'g', 'm'};
for i = 1:length(rutas)
    subplot(1,2,a)
    for j=1:length(conductores)
    file_name = sprintf(patron_entrada, rutas{i},conductores{j});
    datos = dlmread (file_name,',');
   
     fprintf('Estadísticas del %s en la ruta %s:\n',rutas{i},conductores{j})
     fprintf('Velocidad media: %.2f (sd: %.2f)\n',mean(datos(:,2)), std(datos(:,2)))
     fprintf('Rango de velocidades: [%.2f, %.2f]\n\n',min(datos(:,2)),max(datos(:,2)))
     
    hold on
    plot (datos (:,1), datos (:,2),col{j})  
    xlabel('Distancia (km)')
    ylabel('Velocidad (km/h)')
    title('Velocidades de las rutas')
    legend('A1','N1');
    
      
    end
   
    a = a+1;
end
% hold off
 saveas(gcf,'route-drivers.png');