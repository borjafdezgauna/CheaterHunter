%Este script muestra el menu principal del programa, para que el usuario
%pueda elegir facilmente lo que desea serle mostrado.
%
%Una vez ejecutado el programa, basta con pulsar la tecla correspondiente.
%
%Si el valor introducido no esta comprendido en las opciones del men�, se
%mostrar� un mensaje avisando al usuario de ello.

clc
clear
disp('#######  MEN�  ########')
disp('1. Muestra las gr�ficas y estad�sticas de las rutas ')
disp('2. Muestra las gr�ficas y estad�sticas de los conductores')
disp('3. C�lculos de tiempo para cada conductor y ruta')
disp('4. Comprobar los l�mites de velocidad ')
disp('5. C�lculo de consumo de combustible para cada conductor y ruta')
disp('6. Salir')
opcion=input('Elige una opci�n:');
while opcion~=6
    switch opcion
        case 1
        run('Tarea1.m')
        case 2
        run('Tarea2.m')
        case 3
        disp('En construcci�n')
        case 4
        disp('En construcci�n')
        case 5
        disp('En construcci�n')
        otherwise
        disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6')
    end
    input('Pulse una tecla para continuar')
    pause;
    disp('#######  MEN�  ########')
    disp('1. Muestra las gr�ficas y estad�sticas de las rutas ')
    disp('2. Muestra las gr�ficas y estad�sticas de los conductores')
    disp('3. C�lculos de tiempo para cada conductor y ruta')
    disp('4. Comprobar los l�mites de velocidad ')
    disp('5. C�lculo de consumo de combustible para cada conductor y ruta')
    disp('6. Salir')
    opcion=input('Elige una opci�n:');
end   