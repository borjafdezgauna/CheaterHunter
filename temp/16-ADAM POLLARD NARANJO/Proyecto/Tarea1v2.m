clf;
clc;

M = dlmread('datos/n1-height.csv',',',1,0);%lectura del archivo n1-height
A = dlmread('datos/a1-height.csv',',',1,0);%lectura del archivo a1-height

for caso = 1:2 %el for se utiliza para crear 2 casos distintos y reducir el codigo a la mitad  
    switch caso       
        case 1
        b=M(:,3);            %condiciones para que el se utilicen por primera vez en el for
        a=3;            %''
        c=4;            %''
        carretera='n';  %''
            
        case 2
        carretera='a';  %condiciones para que el se utilicen por segunda vez en el for
        b=A(:,3);            %''
        a=1;            %''
        c=2;            %''
    end

x1=M(:,a);  %lectura de una columna de la matriz de datos
x2=M(:,c);  %''
y1=A(:,a);  %''
y2=A(:,c);  %''
%-----------grafica----
grafica1=subplot(1,2,caso);
hold on
plot(x2,x1,'r');    %crea grafica roja
plot(y2,y1,'b');    %crea la grafica azul

saveas (gcf,'route-elevations.png'); %guarda la grafica en formato png

%---------Calculos tanto de la carretera a1 como la n1-----
DS=std(b);        %calcular desviacion estandard
media = mean(b);  %calcular altura media
maxima= max(b);   %calcular altura maxima
minima= min(b);   %calcular altura minima

fprintf('Estadísticas de la ruta %s1: \n',carretera);
fprintf('Altura media: %.2f (ds:%.2f)\n', media, DS);
fprintf('Rango de alturas: [%.2f, %.2f]\n', minima, maxima);
end