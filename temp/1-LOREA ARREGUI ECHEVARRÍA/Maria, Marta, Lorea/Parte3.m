%Damos las opciones
fprintf('####### MENU ########:\n')
fprintf('1. Muestra las graficas y estadisticas de las rutas\n')
fprintf('2. Muestra las graficas y estadisticas de los conductores\n')
fprintf('3. Calculos de tiempo para cada conductor y ruta\n')
fprintf('4. Comprobar los limites de velocidad\n')
fprintf('5. Calculo de consumo de combustible para cada conductor y ruta\n')
fprintf('6. Salir\n')
%Programamos para poder elegir una de las 6 opciones
opcion=input('Elige una opcion')
switch opcion
    case 1
        Tarea1   %Nombrando la tarea, forzamos a sacarla
        x=input('Pulse una tecla para continuar\n')
        clc
        close
        Parte3   %Llamamos otra vez a la Parte3 para que nos vuelva a salir el menu

   case 2        
        t2
        x=input('Pulse una tecla para continuar\n')
        clc close
        Parte3

   case 3        
        ej46
        x=input('Pulse una tecla para continuar\n')
        Parte3

  case 4   %Al no tener las tareas hechas, en este caso no funciona
       
        x=input('Pulse una tecla para continuar\n')
        Parte3

  case 5    %Al no tener las tareas hechas, en este caso no funciona
        
        x=input('Pulse una tecla para continuar\n')
        Parte3
  case 6        %No llamamos a la tarea Parte3, para que salga del programador
       disp('adios')

  otherwise
        disp ('Incorrecto')
        x=input('Pulse una tecla para continuar\n')
        Parte3
end
