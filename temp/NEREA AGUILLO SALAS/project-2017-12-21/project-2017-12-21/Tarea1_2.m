%Primero leemos los ficheros:
autopista=dlmread('a1-height.csv');
nacional=dlmread('n1-height.csv');
%Estadisticas de la ruta a1:
mediatotalAutopista= mean(autopista);
mediaAlturaAutopista= mediatotalAutopista(:,3);
desviacionAutopista = std(altura);
RangoAlturasAutopista= [min(altura),max(altura)];

%Estadisticas de la ruta n1:
mediatotalNacional= mean(nacional);
mediaAlturaNacional= mediatotalNacional(:,3);
desviacionNacional = std(altura2);
RangoAlturasNacional= [min(altura2),max(altura2)];
