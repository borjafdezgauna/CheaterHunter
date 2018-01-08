i=0;
while (i<=5 || i>=7)
    % Limpiamos la pantalla
  clear
  clc
    % Lanzamos el menu a la Command Window
  disp('####### Menu #######')
  disp('1. Muestra las graficas y estadisticas de las  rutas')
  disp('2. Muestra las graficas y estadisticas de los conductores')
  disp('3. Calculos de tiempo para cada conductor')
  disp('4. Comprobar los limites de velocidad')
  disp('5. Calculo de consumo de combustible para cada conductor y ruta')
  disp('6. Salir')
    % Hacemos peticion de programa
  i=input('Elige una opcion:');
  switch (i)
      % Ejecutamos el programa seleccionado
    case {1}
      script('scriptgraficos')
      k=input('Pulsa  una tecla para continuar');
    case {2}
      disp('#####Graficas y estadisticas de los conductores en construcción#####')
      k=input('Pulsa  una tecla para continuar');
    case {3}
      disp('#####Tiempo para cada conductor en construcción#####')
      k=input('Pulsa  una tecla para continuar');
    case {4}
      disp('#####Limites de velocidad en construcciòn#####')
      k=input('Pulsa  una tecla para continuar');
    case {5}
      disp('#####Consumo de combustible para cada conductor y ruta en construcción#####')
      k=input('Pulsa  una tecla para continuar');
    case {6}
      disp('#####Programa finalizado#####')
    otherwise
      disp('#####Opcion incorrecta: debe ser un número entre 1 y 6#####')
      k=input('Pulsa  una tecla para continuar');
  end
end
  