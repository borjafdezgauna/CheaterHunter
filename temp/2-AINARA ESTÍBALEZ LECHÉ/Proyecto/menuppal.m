clear
clc

fprintf('\n####### MENU ########: ');
fprintf('\n 1.Muestra las gr�ficas y estad�sticas de las rutas\n')
fprintf('\n 2.Muestra las gr�ficas y estad�sticas de los conductores\n')
fprintf('\n 3.C�lculos de tiempo para cada conductor y ruta\n')
fprintf('\n 4.Comprobar los l�mites de velocidad\n')
fprintf('\n 5.C�lculo de consumo de combustible para cada conductor y ruta\n')
fprintf('\n6. Salir\n')
opc=input('Elige una opci�n:');
switch opc
  case 1 
    trabajoParte1
    t=input('Pulsa una tecla para continuar\n');
    pause
    menuppal
  case 2
    trabajoParte2
    t=input('Pulsa una tecla para continuar\n');
    pause
    menuppal 
   case 3
    %Subtarea 6 parte 4
    t=input('Pulsa una tecla para continuar\n');
    pause
    menuppal
    case 4
    %trabajoParte5
    t=input('Pulsa una tecla para continuar\n');
    pause
    menuppal
    case 5
    %trabajoParte6
    t=input('Pulsa una tecla para continuar\n');
    pause
    menuppal
  case 6
    return 
  otherwise
    disp ('Opci�n incorrecta')
    t=input('Pulsa una tecla para continuar\n');
    pause
    menuppal
end
