clf;
clc;
clear;
M1 = dlmread('datos/n1-driver1-log.csv');
M2 = dlmread('datos/n1-driver2-log.csv');
A1 = dlmread('datos/a1-driver1-log.csv');
A2 = dlmread('datos/a1-driver2-log.csv');

for caso = 1:2 %el for se utiliza para crear 2 casos distintos y reducir el codigo a la mitad
    
    switch caso

        case 1
            a=M1;            %condiciones para que el se utilicen por primera vez en el for
            m=M2;
            carretera='a';  %''
        case 2
            carretera='n';  %condiciones para que el se utilicen por segunda vez en el for
            a=A1;            %''
            m=A2;
    end

x1=m(:,1);    %km origen (2) n1
x2=m(:,2);     %velocidad(2) n1

y1=a(:,1);   %km origen (2) a1
y2=a(:,2);     %velocidad(2) a1

%-----------grafica----
grafica1=subplot(1,2,caso);
hold on
plot(x1,x2,'r');    %crea grafica roja
plot(y1,y2,'b');    %crea la grafica azul

saveas (gcf,'route-elevations.png'); %guarda la grafica en formato png

c=a;
    for caso=1:2
    %---------Calculos tanto de la carretera a1 como la n1-----
    DS=std(c);        %calcular desviacion estandard
    DS=DS(:,2);
    media = mean(c);  %calcular altura media
    media = media(:,2);
    maxima= max(c);   %calcular altura maxima
    maxima=maxima(:,2);
    minima= min(c);   %calcular altura minima
    minima=minima(:,2);

    fprintf('Estadísticas de la ruta %s1: \n',carretera);
    fprintf('Altura media: %.2f (ds:%.2f)\n', media, DS);
    fprintf('Rango de alturas: [%.2f, %.2f]\n', minima, maxima);
c=m;
    end
end