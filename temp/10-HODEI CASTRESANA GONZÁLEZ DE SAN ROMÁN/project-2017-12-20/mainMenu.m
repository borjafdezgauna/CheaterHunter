clc
eleccion= input('####### MEN� ########:\n1. Muestra las gr�ficas y estad�sticas de las rutas\n2. Muestra las gr�ficas y estad�sticas de los conductores\n3. C�lculos de tiempo para cada conductor y ruta\n4. Comprobar los l�mites de velocidad\n5. C�lculo de consumo de combustible para cada conductor y ruta\n6. Salir\nElige una opci�n:');
while eleccion ~= 6

  if eleccion<1 || eleccion>6
    disp ('Opci�n incorrecta: debe ser un n�mero entre 1 y 6')
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