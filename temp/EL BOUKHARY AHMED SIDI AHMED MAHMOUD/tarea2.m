clc
clear
carretera=['n','a'];
conductor=[1 2];
k=1;
for j=conductor
    for i=carretera
    archCarga=sprintf('%s1-driver%d-log.csv',i,j);
    archDescarga=sprintf('Velocidad-driver%d.png',j);
    titulo=sprintf('Dis/Vel del conductor%d(%s1)',j,i);
    datos=dlmread(archCarga,',');
    Distancia=datos(:,1);
    Velocidad=datos(:,2);
    subplot(2,2,k);
    grafica=plot(Distancia,Velocidad);
    title(titulo);
    xlabel('Distancia(km)');
    ylabel('Velocidad(s)');
    grid on;
    k=k+1;
    fprintf('Estadísticas del conductor%d en la ruta %s1:\n',j,i);
    media=sum(datos(:,2))/length(datos);
    sumaTotal=0;
    for n=1:length(datos)
        sumaTotal=sumaTotal+(((datos(n,2))-media)^2);
    end
    sd4=sqrt((sumaTotal)/(length(datos)-1));
    max=datos(1,2);
    min=datos(1,2);
    for i=1:length(datos)
        if datos(i,2)>max
            max=datos(i,2);
        end
        if datos(i,2)<min
            min=a1(i,2);
        end
    end
    fprintf('altura media: %3.2f (sd: %3.2f)\n',media,sd4)
    fprintf('rango de alturas:[%3.2f ,%3.2f]\n',min,max)
    end
    k=1;
    saveas(grafica,archDescarga)
end