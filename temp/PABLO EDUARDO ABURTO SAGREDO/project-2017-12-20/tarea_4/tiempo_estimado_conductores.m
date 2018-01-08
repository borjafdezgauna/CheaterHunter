%Script tarea 4.6

clear
clc

%Lectura de los datos, guardarlos en variables.
conductor1_a1=dlmread('datos/a1-driver1-log.csv');
conductor2_a1=dlmread('datos/a1-driver2-log.csv');

conductor1_n1=dlmread('datos/n1-driver1-log.csv');
conductor2_n1=dlmread('datos/n1-driver2-log.csv');

%conductor1_a1_tiempo=toHMS(estimateTime(conductor1_a1(:,1),conductor1_a1(:,2),1000));
%conductor2_a1_tiempo=toHMS(estimateTime(conductor2_a1(:,1),conductor2_a1(:,2),1000));
%conductor1_n1_tiempo=toHMS(estimateTime(conductor1_n1(:,1),conductor1_n1(:,2),1000));
%conductor2_n1_tiempo=toHMS(estimateTime(conductor2_n1(:,1),conductor2_n1(:,2),1000));

%fprintf('Tiempo estimado del conductor 1 por la A-1: %s\n',conductor1_a1_tiempo);
%fprintf('Tiempo estimado del conductor 2 por la A-1: %s\n',conductor2_a1_tiempo);
%fprintf('Tiempo estimado del conductor 1 por la N-1: %s\n',conductor1_n1_tiempo);
%fprintf('Tiempo estimado del conductor 2 por la N-1: %s\n',conductor2_n1_tiempo);


%Optimización del script.

%Resetear variables para utilizarla en el el comando for.
datos=0; 
conductor=0;
name=' ';
c={conductor1_a1 conductor2_a1 conductor1_n1 conductor2_n1};

for i=1:length(c)
    datos=c{i};
    tiempo=toHMS(estimateTime(datos(:,1),datos(:,2),1000));
            if i==1 %Este "if" es para poder cambiar en cada bucle el nombre de la carretera
                    %y conductor del "fprintf".
                name='A-1';
                conductor=1;
            elseif i==2
                name='A-1';
                conductor=2;
            elseif i==3
                name='N-1';
                conductor=1;
            else
                name='N-1';
                conductor=2;
            end
    fprintf('Tiempo estimado del conductor %d por la %s: %s\n',conductor,name,tiempo);
end

    
    
    