clc
clear

fprintf('\n\n\n\n####### MENU ########:\n\n ');
fprintf('\n1. Muestra las gr�ficas y estad�sticas de las rutas\n\n');
fprintf('\n2. Muestra las gr�ficas y estad�sticas de los conductores\n\n');
fprintf('\n3. C�lculos de tiempo para cada conductor y ruta\n\n');
fprintf('\n4. Comprobar los l�mites de velosidad\n\n');
fprintf('\n5. C�lculo de consumo de combustible para cada conductor y ruta\n\n');
fprintf('\n6. Salir\n\n');



opc=input('Elige una opcion:');
switch opc
  case 1 
    perfiles_elevacion
  case 2
    registros_rutas
  case 3
    disp(3)
  case 4
    disp(4)
  case 5
    disp(5)
  case 6
   break
    
  otherwise
  disp ('Opcion incorrecta')
  t=input('Pulsa una tecla\n');
  mainMenu
end
