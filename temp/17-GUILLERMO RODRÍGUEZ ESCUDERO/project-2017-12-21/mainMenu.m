clc
clear all
fprintf('#######  MENU  ########:\n1. Muestra las graficas y estadisticas de las rutas \n2. Muestra las graficas y estadisticas de los conductores \n3. Calculos de tiempo para cada conductor y ruta \n4. Comprobar los limites de velocidad \n5. Calculo de consumo de combustible para cada conductor y \nruta \n6. Salir\n\n')
opc=input('Elige una opcion:'); %guardamos la opcion como variable
switch opc %variable utilizada
  case 1 %iniciamos el primer caso del switch
    disp(1) 
    t=input('Pulsa una tecla');
    tarea_1 %nos abre la tarea 1
    pause %permite pararse en la tarea
    close all %cerramos el ejercicio 
    mainMenu %volvemos al menu para seguir con el programa
  case 2
    disp(2)
    t=input('Pulsa una tecla');
    tarea_2
    pause
    close all
    mainMenu
  case 3
    disp(3)
    t=input('Pulsa una tecla');
    tarea_4
    pause
    close all
    mainMenu
  case 4
    disp(4)
    t=input('Funcion no definida');
    mainMenu
  case 5
    disp(5)
    t=input('Funcionn no definida');
    mainMenu
  case 6
    disp(6)
    t=input('Pulsa una tecla para salir del programa');
    clear all
    clc
  otherwise %si la variable no está definida, reiniciamos el menu
    disp ('Opci�n incorrecta: debe ser un n�mero entre 1 y 6')
    t=input('Pulsa una tecla para volver al menu');
    mainMenu
end
