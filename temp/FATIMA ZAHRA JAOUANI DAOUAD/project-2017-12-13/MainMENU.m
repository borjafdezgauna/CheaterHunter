clear
clc

opcion=input('Introduzca el n�mero de la operaci�n que desea realizar ');

if   opcion<1 || opcion>6
      disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6')
      opcion=input('Introduzca el n�mero de la operaci�n que desea realizar ');
end

while opcion>=1 && opcion<6
  if opcion == 1
    tarea1
  elseif opcion == 2
    tarea2
  elseif opcion == 3
    tarea4
  elseif opcion == 4
    tarea5
  elseif opcion == 5
    tarea6
  elseif opcion == 6
  end
  opcion=input('Introduzca el n�mero de la operaci�n que desea realizar ');
end

