clc
fprintf('\n####### MENU ########: ');
fprintf('\n6. Salir\n')
opc=input('Elige una opcion del Menu:');
switch opc
  case 1 % Muestra las gráficas y estadísticas de las rutas
    Tarea1b
    t=input('Pulsa un numero\n');% Cuando se introduce un numero vuelve al MENU principal   
    menuppal
  case 2  % Muestra las gráficas y estadísticas de los conductores
    Tarea2b
    t=input('Pulsa un numero\n');
    menuppal
  case 6
    disp(6)
    t=input('Pulsa un numero\n');
  otherwise
  disp ('Opc incorrecta')
  t=input('Pulsa un numero\n');
  menuppal
end
