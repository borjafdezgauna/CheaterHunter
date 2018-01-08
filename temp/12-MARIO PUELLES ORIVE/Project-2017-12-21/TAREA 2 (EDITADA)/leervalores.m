function [distancia,velocidad,media,desviacion,min1,max1]=leervalores(nombrearchivo,titulo)
v=dlmread(nombrearchivo,',',0,0);
distancia=v(:,1);
distancia=distancia';
velocidad=v(:,2);
velocidad=velocidad';
media=mean(velocidad);
desviacion=std(velocidad);
min1=min(velocidad);
max1=max(velocidad);
disp(titulo)
fprintf('Velocidad media: %.2f (sd: %.2f)\n',media,desviacion)
fprintf('Rango de velocidades: [%.2f, %.2f]\n',min1,max1)
fprintf('\n')
end