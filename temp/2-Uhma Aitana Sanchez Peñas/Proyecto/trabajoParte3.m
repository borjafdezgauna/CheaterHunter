clear
clc
%Creamos el men�
fprintf('\n####### MENU ########: ');
fprintf('\n 1.Muestra las gr�ficas y estad�sticas de las rutas\n')
fprintf('\n 2.Muestra las gr�ficas y estad�sticas de los conductores\n')
fprintf('\n 3.C�lculos de tiempo para cada conductor y ruta\n')
fprintf('\n 4.Comprobar los l�mites de velocidad\n')
fprintf('\n 5.C�lculo de consumo de combustible para cada conductor y ruta\n')
fprintf('\n6. Salir\n')
opc=input('Elige una opci�n:');
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
  disp ('Opci�n incorrecta, escriba un n�mero del 1 al 6')
  t=input('Pulsa una tecla para continuar\n');
  menuppal
end
