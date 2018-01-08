%Pedimos un numero para saber en cuantos tramos partir el recorrido entero
  numslices= input('Dime el numero de tramos del recorrido')

  %Creamos un for para repetir con ambos conductores
    for driver = {'1' , '2'}

      %Usamos otro for para la ruta
        for ruta= {'a1', 'n1'}

      %Leemos el fichero y le asignamos un documento
          fichero= sprintf('%s-driver%s-log.csv',ruta{1},driver{1});
          datos = dlmread (fichero, ',',1,0);

      %Sacamos la velocidad
          kms= datos(:,1);       %Lee a partir de la primera columna
          speedkmH=datos(:,2);  %Lee a partir de la segunda columna

      %Llamamos a las funciones para poder sacar los datos
          segundos=estimateTime(kms,speedkmH, numslices);
          t=toHMS(segundos)

      %Sacamos por pantalla
          fprintf('El tiempo estimado par el driver %s en la ruta %s:%s\n', driver{1}, ruta{1},t)
          % %s= cadena caracteres

        end
    end
    