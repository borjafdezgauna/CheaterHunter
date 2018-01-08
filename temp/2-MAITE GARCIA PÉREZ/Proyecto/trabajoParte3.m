clear
clc
%Creamos el menú
fprintf('\n####### MENU ########: ');
fprintf('\n 1.Muestra las gráficas y estadísticas de las rutas\n')
fprintf('\n 2.Muestra las gráficas y estadísticas de los conductores\n')
fprintf('\n 3.Cálculos de tiempo para cada conductor y ruta\n')
fprintf('\n 4.Comprobar los límites de velocidad\n')
fprintf('\n 5.Cálculo de consumo de combustible para cada conductor y ruta\n')
fprintf('\n6. Salir\n')
opc=input('Elige una opción:');
%Configuramos las diferentes opciones
switch opc
  case 1 
    trabajoParte1 %Llamamos a la parte del trabajo que queremos
    t=input('Pulsa una tecla para continuar\n');
    menuppal
  case 2
    trabajoParte2
    t=input('Pulsa una tecla para continuar\n');
    menuppal 
   case 3
    tarea4parte6
    t=input('Pulsa una tecla para continuar\n');
    menuppal
    case 4
    trabajoParte5
    t=input('Pulsa una tecla para continuar\n');
    menuppal
    case 5
    trabajoParte6
    t=input('Pulsa una tecla para continuar\n');
    menuppal
  case 6
   return %Salimos del programa
  otherwise
  disp ('Opción incorrecta, escriba un número del 1 al 6')
  t=input('Pulsa una tecla para continuar\n');
  menuppal
end
