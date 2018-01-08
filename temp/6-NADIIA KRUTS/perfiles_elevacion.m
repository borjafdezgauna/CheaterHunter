% leemos los ficheros y sacamos las variables

a1=dlmread('a1-height.csv',',');
n1=dlmread('n1-height.csv',',');

% borramos la primera linea, que equivale a las cabeceras

a1(1,:)=[];
n1(1,:)=[];

% Generamos las graficas

subplot(2,1,1)
plot(a1(:,4),a1(:,3)); 
hold on 
plot(n1(:,4),n1(:,3));
xlabel('distancia desde el origen(km)');
ylabel('alturas(m)');
legend('A1','N1');
hold off

subplot(2,1,2)
plot(a1(:,1),a1(:,2)); 
hold on 
plot(n1(:,1),n1(:,2));
xlabel('latitud');
ylabel('longitud');
legend('A1','N1');

%guardamos en el fichero 'rute-elevation.png'
saveas(gcf,'rute-elevation.png');


hold off

%Cargamos las variables

media_a1=mean(a1(:,3));
maximo_a1=max(a1(:,3));
minimo_a1=min(a1(:,3));
desviacion_estandar_a1=std(a1(:,3));

media_n1=mean(n1(:,3));
maximo_n1=max(n1(:,3));
minimo_n1=min(n1(:,3));
desviacion_estandar_n1=std(n1(:,3));

% sacamos los datos por pantalla
clc
fprintf('Estadistica de la ruta n1:\n');
fprintf('Altura media: %.2f (sd: %.2f)\n',media_n1,desviacion_estandar_n1);
fprintf('Rango de alturas: [%.2f,%.2f]\n\n',minimo_n1,maximo_n1); 

fprintf('Estadistica de la ruta a1:\n');
fprintf('Altura media: %.2f (sd: %.2f)\n',media_a1,desviacion_estandar_a1);
fprintf('Rango de alturas: [%.2f,%.2f]\n\n',minimo_a1,maximo_a1); 

%Cuando den una tecla, se ejecuta de nuevo el mainMenu
num=input('Pulsa un numero para continuar:  ');
mainMenu









