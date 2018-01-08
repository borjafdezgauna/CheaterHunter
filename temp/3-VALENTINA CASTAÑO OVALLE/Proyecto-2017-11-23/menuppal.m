clc
fprintf('\n####### MENU ########: ');
fprintf('\n6. Salir\n')
opc=input('Elige una opcion:');
switch opc
  case 1 
    Tarea1b % Se muestra las graficas y estadisticas de las rutas
    t=input('Pulsa una tecla\n');
    menuppal
  case 2
    Tarea2b % Se muestra las graficas y estadisticas de los conductores
    t=input('Pulsa una tecla\n');
    menuppal
  case 6
    disp(6)
    t=input('Pulsa una tecla\n');
  otherwise
  disp ('Opc incorrecta')
  t=input('Pulsa una tecla\n');
  menuppal
end
