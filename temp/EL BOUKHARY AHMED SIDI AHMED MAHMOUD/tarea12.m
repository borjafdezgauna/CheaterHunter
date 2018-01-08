
clc
%tenemos que calcular la media, la desviacion estandar y la elavacion minima y maxima.
%primero sacamos los datos del archivo excel usando dlmread.
MatrizB=dlmread('a1-height.csv',',',1,0);

Altura=MatrizB(:,3);
%usamos sum para que nos sume todos los valores y length para que nos saque la cantidad de numeros que hay en el vector.
sum(Altura);
length(Altura);
%la media sera la la suma entre length.
fprintf('Estadísticas de la ruta a1:\n');
media= (sum(Altura)/length(Altura));
%calculamos la desviacion estandar mediante std.
Desv= std(Altura);
%calculamos los maximos y minimos mediantes max y min.
Maximo= max(Altura);
Minimo= min(Altura);
fprintf('Altura media: %3.2f (sd: %3.2f)\n',media,Desv)
fprintf('Rango de alturas: [%3.2f, %3.2f]\n',Minimo,Maximo)


%sacamos los datos mediante dlmread.
MatrizC=dlmread('n1-height.csv',',',1,0);
Alturan1=MatrizC(:,3);
%hallamos la altura media mediante sum y length.
fprintf('Estadísticas de la ruta n1:\n');
media=sum(Alturan1)/length(Alturan1);
Desv= std(Alturan1);
Maximo=max(Alturan1);
Minimo= min(Alturan1);
fprintf('Altura media: %3.2f (sd: %3.2f)\n',media,Desv)
fprintf('Rango de alturas: [%3.2f, %3.2f]\n',Minimo,Maximo)
