%Mild infraction risk: Kms abover the speed limit= 10.43 (5.64% of
%the route
clc
clear
carretera=['n','a'];
conductor=[1 2];
for j=conductor
    for i=carretera
    archivoCond=sprintf('%s1-driver%d-log.csv',i,j);
    datosCond=dlmread(archivoCond,',');
    archivoVel=sprintf('%s1-speed-limit.csv',i);
    datosVel=dlmread(archivoVel,';');
    [x,y]=checkSpeedLimits(datosCond(:,1),datosCond(:,2),datosVel(:,1),datosVel(:,2),1000);
    fprintf('Analyzing: Driver= driver%d, Route= %s1\n' ,j,i)
    fprintf('Mild infraction risk: Kms abover the speed limit=%3.2f (%3.2f%s ofthe route)\n',x,y,'%')
    end
end