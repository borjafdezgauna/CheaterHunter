clc
clear

Ruta={'a1', 'n1'};


for i=1:length(Ruta)
    
    A=sprintf('%s-height.csv', Ruta{i});
    B=dlmread(A, ',', 2, 0);
    
    hold on
    
    if i==1
    hold on
    subplot(2,1,1);
    plot(B(:,3), 'g-');
    title('ELEVACION')
    xlabel('Distancia');
    ylabel('Altitud');
    
    
    hold on
    subplot(2,1,2);
    plot(B(:,2),B(:,1), 'g-');
    title('COORDENADAS');
    xlabel('Longitud');
    ylabel('Latitud');
   

    else
    hold on
    subplot(2,1,1);
    plot(B(:,3),'r-');
    legend('N1', 'A1')
    hold on
    subplot(2,1,2);
    plot(B(:,2),B(:,1), 'r-');
    legend('N1', 'A1');
    end

    AlturaMedia=mean(B(:,3));
    Maximo=max(B(:,3));
    Minimo=min(B(:,3));
    Rango=[Minimo Maximo];
   
    fprintf('\nEstadisticas de la ruta %s:\nAltura media:%.2f\nRango de alturas:[%.2f %.2f]', Ruta{i}, AlturaMedia, Minimo, Maximo);
end   
    print('route-elevations-tarea1.png', '-dpng')
    mainMenu