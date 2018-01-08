%Primero debemos cargar ficheros
velocidadAutopista=dlmread('a1-driver1-log.csv');
velocidadAutopista2=dlmread('a1-driver2-log.csv');
velocidadNacional=dlmread('n1-driver1-log.csv');
velocidadNacional2=dlmread('n1-driver2-log.csv');
%Estadísticas del conductor1 en la ruta n1:
mediatotalNacional= mean(velocidadNacional);
mediaVelocidadNacional= mediatotalNacional(:,2);
desviacionNacional = std(velocidadN);
RangoVelocidadessNacional= [min(velocidadN),max(velocidadN)];

%Estadísticas del conductor2 en la ruta n1:
mediatotalNacional2= mean(velocidadNacional2);
mediaVelocidadNacional2= mediatotalNacional2(:,2);
desviacionNacional2= std(velocidadN2);
RangoVelocidadesNacional2= [min(velocidadN2),max(velocidadN2)];

%Estadísticas del conductor1 en la ruta a1:
mediatotalAutopista= mean(velocidadAutopista);
mediaVelocidadAutopista= mediatotalAutopista(:,2);
desviacionAutopista = std(velocidadA);
RangoVelocidadesAutopista= [min(velocidadA),max(velocidadA)];

%Estadísticas del conductor2 en la ruta a1:
mediatotalAutopista2= mean(velocidadAutopista2);
mediaAlturaAutopista2= mediatotalAutopista2(:,2);
desviacionAutopista2 = std(velocidadA2);
RangoAlturasAutopista2= [min(velocidadA2),max(velocidadA2)];

