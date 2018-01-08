for l=1:4 %Creamos un for para que el programa lea tantas veces el Switch como casos tenga este. 
    switch l
        case 1
[kmsn1,speedKmHn1]=leervalores4('n1-driver1-log.csv'); %Llamada a la funcion leervalores4 para obtener los datos del conductor 1 en la ruta n1.
[distancian1,limiten1]=leervalores5('n1-speed-limit.csv'); %Llamada a la funcion leervalores5 para obtener los limites de velocidad de la ruta n1.
[kmsaboven1,percentn1]=checkspeedlimits(kmsn1,speedKmHn1,distancian1,limiten1,1000); %Llamada a la función checkspeedlimits que nos facilita los datos de los kms fuera del limite y el porcentaje fuera del limite respecto a la ruta. 
fprintf('Analyzing: Driver= driver1, Route= n1\n') %Sacamos por pantalla un titulo
[riskn1]=risk(percentn1); %Llamada a la funcion de riesgo para que nos diga si el conductor esta en alto riesgo, leve, o no arriesga.
fprintf('%s: Kms abover the speed limit= %.2f(%.2f%% of the route)\n',riskn1,kmsaboven1,percentn1) %Sacamos los datos por pantalla
fprintf('\n')
        case 2
[kmsn2,speedKmHn2]=leervalores4('n1-driver2-log.csv');
[distancian2,limiten2]=leervalores5('n1-speed-limit.csv');
[kmsaboven2,percentn2]=checkspeedlimits(kmsn2,speedKmHn2,distancian2,limiten2,1000);
fprintf('Analyzing: Driver= driver2, Route= n1\n')
[riskn2]=risk(percentn2);
fprintf('%s: Kms abover the speed limit= %.2f(%.2f%% of the route)\n',riskn2,kmsaboven2,percentn2)
fprintf('\n')
        case 3
[kmsa1,speedKmHa1]=leervalores4('a1-driver1-log.csv');
[distanciaa1,limitea1]=leervalores5('a1-speed-limit.csv');
[kmsabovea1,percenta1]=checkspeedlimits(kmsa1,speedKmHa1,distanciaa1,limitea1,1000);
fprintf('Analyzing: Driver= driver1, Route= a1\n')
[riska1]=risk(percenta1);
fprintf('%s\n',riska1)
fprintf('\n')
        case 4
[kmsa2,speedKmHa2]=leervalores4('a1-driver2-log.csv');
[distanciaa2,limitea2]=leervalores5('a1-speed-limit.csv');
[kmsabovea2,percenta2]=checkspeedlimits(kmsa2,speedKmHa2,distanciaa2,limitea2,1000);
fprintf('Analyzing: Driver= driver2, Route= a1\n')
[riska2]=risk(percenta2);
fprintf('%s: Kms abover the speed limit= %.2f(%.2f%% of the route)\n',riska2,kmsabovea2,percenta2)
fprintf('\n')    
    end    
end
