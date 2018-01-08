letra={'a', 'n'};
numero={'1', '2'};
for i=1:length(letra)
   for j=1:length(numero)
    filename=sprintf('%s1-driver%s-log.csv' , letra{i}, numero{j});
    carretera=dlmread(filename, ',' , 1,0);
    distancia=carretera(:,1);
    velocidad=carretera(:,2);
    numSlices=1000;
    seconds=estimateTime(distancia, velocidad, numSlices);
    tiempo=toHMS(seconds);
    fprintf('Estimated time for driver%s in route%s1: %s\n' , numero{j},letra{i}, tiempo);
   end
end