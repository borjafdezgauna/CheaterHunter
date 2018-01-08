clc
eleccion= input('####### MENÚ ########:\n1. Muestra las gráficas y estadísticas de las rutas\n2. Muestra las gráficas y estadísticas de los conductores\n3. Cálculos de tiempo para cada conductor y ruta\n4. Comprobar los límites de velocidad\n5. Cálculo de consumo de combustible para cada conductor y ruta\n6. Salir\nElige una opción:');
while eleccion ~= 6

  if eleccion<1 || eleccion>6
    disp ('Opción incorrecta: debe ser un número entre 1 y 6')
  elseif eleccion ==1
    run('Tarea1.m');
  elseif eleccion ==2
    run ('Tarea2.m');
  elseif eleccion == 3
    disp('La tarea que desea aun no se encuentra en el menu')
  elseif eleccion == 4
     disp('La tarea que desea aun no se encuentra en el menu')
   else eleccion==5
      disp('La tarea que desea aun no se encuentra en el menu')
   end
   eleccion= input('Pulsa una tecla para continuar');
end