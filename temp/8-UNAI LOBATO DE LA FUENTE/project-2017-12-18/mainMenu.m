clc
fprintf('\n ####### MENU ########:')
fprintf('\n 1. Muestra las graficas y estadisticas de las rutas')
fprintf('\n 2. Muestra las graficas y estadisticas de los conductores')
fprintf('\n 3. Calculos de tiempo para cada conductor y ruta')
fprintf('\n 4. Comprobar los limites de velocidad')
fprintf('\n 5. Calculo de consumo de combustible para cada conductor y ruta')
fprintf('\n 6. Salir \n')
opc=input(' Elige una opcion:');
switch opc
  case 1 
    Tarea1
    t=input('Pulsa una tecla para continuar ');
    mainMenu
  case 2
    Tarea2
    t=input('Pulsa una tecla para continuar ');
    mainMenu
  case 3
    disp('No hay datos de tiempos de conductor y ruta')
    t=input('Pulsa una tecla para continuar ');
    mainMenu
  case 4
    disp('No hay datos de lo limites de velocidad')
    t=input('Pulsa una tecla para continuar ');
    mainMenu
  case 5
    disp('No hay datos de consumo de combustible por conductor y ruta')
    t=input('Pulsa una teclapara continuar ');
    mainMenu
  case 6
    clc
    return
  otherwise
  disp ('Opcion incorrecta: debe ser un numero entre 1 y 6')
  t=input('Pulsa una tecla para continuar ');
  mainMenu
end
