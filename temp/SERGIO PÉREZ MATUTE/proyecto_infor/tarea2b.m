clear all
clc
a={'n1','a1'};
b={'driver1','driver2'}
for i=1:length(a)
    for j=1:length(b)
    file=sprintf('%s-%s-log.csv',a{i},b{j});
    datos=dlmread(file,',',0,0);
    velocidad=datos(:,2);
    velocidadMedia= mean(velocidad);
    desviacion=std(velocidad);
    velocidadMin=min(velocidad);
    velocidadMax=max(velocidad);
    fprintf('Estadísticas del conductor %s%s:\n',a{i},b{j}) 
    fprintf('velocidad media: %.2f (sd: %.2f )\n',velocidadMedia,desviacion)
    fprintf('Rango de velocidades:[ %.2f, %.2f ]\n',velocidadMin,velocidadMax)
    end
end