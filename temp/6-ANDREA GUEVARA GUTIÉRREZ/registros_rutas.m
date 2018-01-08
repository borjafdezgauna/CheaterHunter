% leemos los ficheros y sacamos las variables
a1_1=dlmread('a1-driver1-log.csv',',');
a1_2=dlmread('a1-driver2-log.csv',',');
n1_1=dlmread('n1-driver1-log.csv',',');
n1_2=dlmread('n1-driver2-log.csv',',');

% Generamos las graficas

subplot(2,1,1)
plot(a1_1(:,1),a1_1(:,2)); 
hold on 
plot(n1_1(:,1),n1_1(:,2));
xlabel('distancia desde el origen(km)');
ylabel('velocidades(km/h)');
legend('CONDUCTOR1.A1','CONDUCTOR1.N1');
hold off

subplot(2,1,2)
plot(a1_2(:,1),a1_2(:,2)); 
hold on 
plot(n1_2(:,1),n1_2(:,2));
xlabel('distancia desde el origen(km)');
ylabel('velocidades(km/h)');
legend('CONDUCTOR2.A1','CONDUCTOR2.N1');

%Cargamos las variables

media_a1_1=mean(a1_1(:,2));
maximo_a1_1=max(a1_1(:,2));
minimo_a1_1=min(a1_1(:,2));
desviacion_estandar_a1_1=std(a1_1(:,2));

media_a1_2=mean(a1_2(:,2));
maximo_a1_2=max(a1_2(:,2));
minimo_a1_2=min(a1_2(:,2));
desviacion_estandar_a1_2=std(a1_2(:,2));

media_n1_1=mean(n1_1(:,2));
maximo_n1_1=max(n1_1(:,2));
minimo_n1_1=min(n1_1(:,2));
desviacion_estandar_n1_1=std(n1_1(:,2));

media_n1_2=mean(n1_2(:,2));
maximo_n1_2=max(n1_2(:,2));
minimo_n1_2=min(n1_2(:,2));
desviacion_estandar_n1_2=std(n1_2(:,2));

% salvamos las graficas a un fichero llamado rutas_conductor.png
saveas(gcf,'rutas_conductor.png'); 

% sacamos los datos por pantalla
clc

fprintf('Estadisticas del conductor1 en la ruta n1:\n');
fprintf('Velocidad media: %.2f (sd: %.2f)\n',media_n1_1,desviacion_estandar_n1_1);
fprintf('Rango de velocidades: [%.2f,%.2f]\n\n',minimo_n1_1,maximo_n1_1); 

fprintf('Estadisticas del conductor2 en la ruta n1:\n');
fprintf('Velocidad media: %.2f (sd: %.2f)\n',media_n1_2,desviacion_estandar_n1_2);
fprintf('Rango de velocidades: [%.2f,%.2f]\n\n',minimo_n1_2,maximo_n1_2); 
fprintf('Estadisticas del conductor1 en la ruta a1:\n');
fprintf('Velocidad media: %.2f (std.dev: %.2f)\n',media_a1_1,desviacion_estandar_a1_1);
fprintf('Rango de velocidades: [%.2f,%.2f]\n\n',minimo_a1_1,maximo_a1_1); 

fprintf('Estadisticas del conductor2 en la ruta a1:\n');
fprintf('Velocidad media: %.2f (std.dev: %.2f)\n',media_a1_2,desviacion_estandar_a1_2);
fprintf('Rango de velocidades: [%.2f,%.2f]\n\n',minimo_a1_2,maximo_a1_2); 


%Cuando den una tecla, se ejecuta de nuevo el mainMenu
num=input('Pulsa un numero para continuar:  ');
mainMenu

