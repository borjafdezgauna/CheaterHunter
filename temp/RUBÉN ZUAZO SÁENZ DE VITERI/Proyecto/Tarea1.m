%Tarea1 acabada
clc
clear all
%For para cargar los ficheros de datos
ruta={'n1','a1'};

for i= 1:length(ruta)
    file=sprintf('%s-height.csv',ruta{i});
    datos=dlmread(file,',',1,0);
    % Hold on para meter las alturas de las rutas en la misma grafica, y
    % para ello tenemos que hacer un plot y un subplot.
    hold on
    subplot(2,1,1)
    plot(datos(:,4),datos(:,3))
    % Xlabel y Ylabel para dar el nombre a los ejes de las graficas y title
    % para poner el tirulo de la grafica
    xlabel('distancia(km)')
    ylabel('elevation(m)')
    title('Altura de rutas');
    hold on
    subplot(2,1,2)
    plot(datos(:,1),datos(:,2))
    xlabel('latitud')
    ylabel('longitud')
    title('Mapa de las rutas')
    
    % Con el fprintf nombramos los datos que vamos a calcular. 
    fprintf('Estadistica de la ruta %s:\n',ruta{i})
    media=mean(datos(:,3));
    desviacionEstandar=std(datos(:,3));
    fprintf('Altura media: %.2f (sd:%.2f)\n',media,desviacionEstandar)
    minimoDeAltura=min(datos(:,3));
    maximoDeAltura=max(datos(:,3)); 
    fprintf('Rango de alturas: [%.2f ,%.2f]\n\n',minimoDeAltura,maximoDeAltura)
    
end
