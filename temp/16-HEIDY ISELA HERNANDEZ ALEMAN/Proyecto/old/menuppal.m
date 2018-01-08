clc
fprintf('\n####### MENU ########: ');
fprintf('\n6. Salir\n')
opc=input('Elige una opci:');
switch opc
  case 1 
    disp(1)
    t=input('Pulsa una tecla\n');
    menuppal
  case 2
    disp(2)
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
