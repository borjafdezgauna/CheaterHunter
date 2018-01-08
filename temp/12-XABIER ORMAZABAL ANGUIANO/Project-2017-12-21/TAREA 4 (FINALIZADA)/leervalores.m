function [distancia,velocidad]=leervalores(nombrearchivo)
v=dlmread(nombrearchivo,',',0,0);
distancia=v(:,1);
distancia=distancia';
velocidad=v(:,2);
velocidad=velocidad';
end