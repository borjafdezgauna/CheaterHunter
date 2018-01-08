clear
clc
numSlices = 10000;
rutas = {'n1','a1'};
conductores = {'driver1','driver2'};
patron_entrada = 'Datos/%s-%s-log.csv';

for t = 1:length(rutas)
    for u = 1:length(conductores)
        file_name = sprintf(patron_entrada,rutas{t},conductores{u});
        datos = dlmread(file_name,',');
    estimatedTime  = estimateTime(datos(:,1), datos(:,2), numSlices);
    hms  = toHMS(estimatedTime);
    a =sprintf('Estimated time for %s in route %s: %s\n',conductores{u},rutas{t},hms);
    disp(a)
    end
end
