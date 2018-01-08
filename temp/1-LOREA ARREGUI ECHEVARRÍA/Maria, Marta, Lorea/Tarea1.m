
%Usamos un for para repetir la funcion tantas veces como se quiera
for ruta={'a1','n1'}  
  
  %Sprintf para llamar al documento "height.csv" y asignarle la variable "fichero"
    fichero = sprintf('%s-height.csv',ruta{1}); 
    
%Leemos con dlmread el fichero de las rutas 
    datos=dlmread(fichero,',',1,0);  %Dentro del fichero separan los datos con comas, y se empieza a leer desde la primera fila
    
%Sacamos los datos del fichero
    latitud=datos(:,1);         %Todos los datos de la primera columna
    longitud=datos(:,2);        %Todos los datos de la segunda columna
    altura=datos(:,3);          %Todos los datos de la tercera columna
    distanciaOrigen=datos(:,4); %Todos los datos de la cuarta columna
    
%Hacemos una subgrafica (dimension eje x, dim eje y, posicion)
    subplot(1,2,1); 
    hold on                    %Superponemos las graficas 
    title('longitud-latitud'); %Titulo de la grafica
    ylabel('latitud');         %Eje y
    xlabel('longitud');        %Eje x
    plot(longitud,latitud);    %Grafica longitud y latitud

%Hacemos otra subgrafica
    subplot(1,2,2);
    hold on              %Mantiene la grafica 
    title('alturas')
    ylabel('distanciaOrigen'); 
    xlabel('altura'); 
    plot(distanciaOrigen, altura); %Grafica con el eje y la distancia y el eje x la altura
    
%Sacamos por pantalla los datos de la funcion
    fprintf('Estadisticas de la ruta %s:\n', ruta{1});
    fprintf('La media es: %2f (sd: %2.f)\n',mean(altura),std(altura));  %mean= la media, std= desviacion estandar
    fprintf('el rango es: [%2.f %2.f]\n',min(altura),max(altura));      %min= minimo, max= maximo 
    
    %2.f = numero real con dos cifras
end

saveas(gcf,'T1.route-elevations.png');
close


