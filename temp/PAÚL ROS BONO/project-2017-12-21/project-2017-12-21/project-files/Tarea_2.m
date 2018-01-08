clc
clear

%Primero generamos los nombres de los archivos. Para ello definimos los cada
%conductores y carreteras que toman parte en el proceso

Conductores=[1 2];
Carretera={'n1' 'a1'};

%Aplicamos un for para leer los datos de los archivos de texto que
%almacenan los distintos registros de los conductores
for i=1:length(Conductores)
    for j=1:length(Carretera)
       %Asignamos el archivo a la variable A 
       A=sprintf('%s-driver%d-log.csv', Carretera{j}, Conductores(i));
       %Leemos los datos del archivo y lo guardamos en B
       B=sprintf('Conductor%d%s', Conductores(i), Carretera{j});
       B=dlmread(A);
       %Hacemos las gráficas.Para ello intentamos con una estructura de ifs
       %anidados para realizar la parte correspondiente a cada lectura o vuelta, 
       %e intentar juntar cada parte con el hold on, ademas de asignar cada una
       %a su grafica correspondiente mediante los subplots 
       hold on
       if i==1 && j==1
           subplot(2,1,1);
           plot(B(:,1), B(:,2), 'r-');
           xlabel('Distancia (Km)');
           ylabel('Velocidad (Km/h)');
           title('CONDUCTOR 1');
           
          
       elseif i==1 && j==2
            subplot(2,1,1);
            plot(B(:,1), B(:,2), 'g-');
            legend('N1','A1');
      
       elseif i==2 && j==1
              subplot(2,1,2);
              plot(B(:,1), B(:,2), 'r-');
              xlabel('Distancia (Km)');
              ylabel('Velocidad (Km/h)');
              title('CONDUCTOR 2');
      
       elseif i==2 && j==2
                  subplot(2,1,2);
                  plot(B(:,1), B(:,2), 'g-');
                  legend('N1','A1');
       end
       
       %Ahora comenzamos con las operaciones necesarias para hallar los datos que
       %tenemos que devolver
       Velocidad=B(:,2);
       Std= std(Velocidad);
       Vmedia=mean(Velocidad);
       Minimo=min(Velocidad);
       Maximo=max(Velocidad);
       fprintf('\nEstadisticas del conductor %d en la ruta %s:\nVelocidad media:%.2f(sd:%.2f)\nRango de velocidades:[%.2f %.2f]', Conductores(i), Carretera{j}, Vmedia, Std, Minimo, Maximo);
   end
end    
%Usamos la función print para guardar los plots que hemos hecho anteriormente
saveas(gcf,'route-elevations-tarea2.png');


































