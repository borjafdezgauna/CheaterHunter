%Script para la comprobacion de kilometros por encima del límite de
%velocidad.

clear
clc

%Lectura de datos:

conductor1_a1=dlmread('datos/a1-driver1-log.csv');
conductor2_a1=dlmread('datos/a1-driver2-log.csv');

conductor1_n1=dlmread('datos/n1-driver1-log.csv');
conductor2_n1=dlmread('datos/n1-driver2-log.csv');

limites_velocidad_a1=dlmread('datos/a1-speed-limit.csv');
limites_velocidad_n1=dlmread('datos/n1-speed-limit.csv');

numSlices=1000;

%Conductor 1 por la A-1
%[KMS_c1_a1,PORCENTAJE_c1_a1]=checkSpeedLimits(conductor1_a1(:,1),conductor1_a1(:,2),limites_velocidad_a1(:,1),limites_velocidad_a1(:,2), numSlices);

%Conductor 2 por la A-1
%[KMS_c2_a1,PORCENTAJE_c2_a1]=checkSpeedLimits(conductor2_a1(:,1),conductor2_a1(:,2),limites_velocidad_a1(:,1),limites_velocidad_a1(:,2), numSlices);

%Conductor 1 por la N-1
%[KMS_c1_n1,PORCENTAJE_c1_n1]=checkSpeedLimits(conductor1_n1(:,1),conductor1_n1(:,2),limites_velocidad_n1(:,1),limites_velocidad_n1(:,2), numSlices);

%Conductor 2 por la N-1
%[KMS_c2_n1,PORCENTAJE_c2_n1]=checkSpeedLimits(conductor2_n1(:,1),conductor2_n1(:,2),limites_velocidad_n1(:,1),limites_velocidad_n1(:,2), numSlices);



%Optimizacion del script.

%Resetear variables a utilizar en el comando for.
datos=0; 
conductor=0;
name=' ';
simbolo='%';
c={conductor1_a1 conductor2_a1 conductor1_n1 conductor2_n1};

for i=1:length(c)
    if i==1 || i==2        
        limite_velocidad=limites_velocidad_a1;
    else
        limite_velocidad=limites_velocidad_n1;
    end
    
        datos=c{i};
        [kms,porcentaje]=checkSpeedLimits(datos(:,1),datos(:,2),limite_velocidad(:,1),limite_velocidad(:,2),numSlices);
        
        if porcentaje==0
            riesgo='No hay riesgo de infracción';
        elseif porcentaje>0 && porcentaje <=10
            riesgo='Riesgo leve de infracción';
        else
            riesgo='Riesgo alto de infracción';
        end
        
        if i==1
            conductor=1;
            name='A-1';
        elseif i==2
            conductor=2;
            name='A-1';
        elseif i==3
            conductor=1;
            name='N-1';
        else
            conductor=2;
            name='N-1';
        end     
        
        fprintf('Analizando al conductor %d por la ruta %s\n',conductor,name)
        fprintf('%s: Kms sobre el límite de velocidad = %.2f (%.2f%s de la ruta)\n',riesgo,kms,porcentaje,simbolo)
        
end
        
        
        

