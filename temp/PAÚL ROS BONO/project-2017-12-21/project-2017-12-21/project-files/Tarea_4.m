clc
clear

%En primer lugar difiniremos conductores y carretera para utilizarlos luego

Conductores=[1 2];
Carretera={'n1' 'a1'};

%Pediremos al usuario el numero de Slices (para obtener los resultados
%formulados en el proyecto numSlices tiene que ser 10000)

numSlices=input('Introduce numSlices');

%Aplicamos un for para leer los datos de los archivos de texto que
%almacenan los distintos registros de los conductores
for i=1:length(Conductores)
    for j=1:length(Carretera)
       %Asignamos el archivo a la variable A 
       A=sprintf('%s-driver%d-log.csv', Carretera{j}, Conductores(i));
       %Leemos los datos del archivo y lo guardamos en B
       B=sprintf('Conductor%d%s', Conductores(i), Carretera{j});
       B=dlmread(A);
     EstimateSeconds=estimateTime([B(:,1)], [B(:,2)], numSlices);
       TiempoEstimado=toHMS(EstimateSeconds);
       fprintf('\nEstimated time for driver%d in route %s:%s\n', Conductores(i), Carretera {j}, TiempoEstimado)
     end
end