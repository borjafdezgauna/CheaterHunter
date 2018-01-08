clf;
clc;
M1 = dlmread('datos/n1-driver1-log.csv');
M2 = dlmread('datos/n1-driver2-log.csv');
A1 = dlmread('datos/a1-driver1-log.csv');
A2 = dlmread('datos/a1-driver2-log.csv');

for caso = 1:2 %el for se utiliza para crear 2 casos distintos y reducir el codigo a la mitad

    switch caso

        case 1
            a=M1;            %condiciones para que el se utilicen por primera vez en el for
            m=M2;
            carretera='n';  %''
        case 2
            carretera='a';  %condiciones para que el se utilicen por segunda vez en el for
            a=A1;            %''
            m=A2;
    end
            M=a;    %se utiliza en el primer ciclo del for (caso1)
            for caso1=1:2
            x1=M(:,1);    %km origen (2) n1
            x2=M(:,2);     %velocidad(2) n1

            grafica1=subplot(1,2,caso);
            hold on
            plot(x1,x2);    %crea grafica roja
            
            M=m;    %se utiliza en el segundo ciclo del for (caso)
            end
saveas (gcf,'route-elevations.png'); %guarda la grafica en formato png

    c=a(:,2);%se utiliza en el primer ciclo del for (kaso)
    for caso2=1:2
    DS=std(c);        %calcular desviacion estandard
    media = mean(c);  %calcular altura media
    maxima= max(c);   %calcular altura maxima
    minima= min(c);   %calcular altura minima

    fprintf('Estadísticas de la ruta %s1: \n',carretera);
    fprintf('Altura media: %.2f (ds:%.2f)\n', media, DS);
    fprintf('Rango de alturas: [%.2f, %.2f]\n', minima, maxima);
    
    c=m(:,2);%se utiliza en el segundo ciclo del for (caso2)
    end
end