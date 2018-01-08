clc
clear

%Primero generamos los nombres de los archivos. Para ello definimos los cada
%conductores y carreteras que toman parte en el proceso

Conductores=[1 2];
Carretera={'n1' 'a1'};

%Aplicamos un for para leer los datos de los archivos de texto que
%almacenan los distintos registros de los conductores
EstimatedTime={};
numSlices=input('Introduce los numSlices');
for i=1:length(Conductores)
    for j=1:length(Carretera)
       %Asignamos el archivo a la variable A 
       A=sprintf('%s-driver%d-log.csv', Carretera{j}, Conductores(i));
       %Leemos los datos del archivo y lo guardamos en B
       B=sprintf('Conductor%d%s', Conductores(i), Carretera{j});
        B=dlmread(A, ',', 0, 2);
       kms=B(:,1);
       speedKmH=B(:,2);
       C=estimateTime(kms, speedKmH, numSlices);
      
       EstimatedTime={toHMS(C) EstimatedTime};
       
       fprintf('El tiempo estimado es %d', (EstimatedTime))
    end
end