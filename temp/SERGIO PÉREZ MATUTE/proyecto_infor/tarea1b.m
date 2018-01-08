clear all
clc
a={'n1','a1'};
for i=1:length(a)
    file=sprintf('%s-height.csv',a{i});
    datos=dlmread(file,',',1,0);
    altura=datos(:,3);
    alturaMedia= mean(altura);
    desviacion=std(altura);
    alturaMin=min(altura);
    alturaMax=max(altura);
    fprintf('Estadísticas de la ruta %s:\n',a{i}) 
    fprintf('Altura media: %.2f (sd: %.2f )\n',alturaMedia,desviacion)
    fprintf('Rango de alturas:[ %.2f, %.2f ]\n',alturaMin,alturaMax)
end