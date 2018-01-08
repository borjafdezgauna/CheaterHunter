%Este script muestra el menu principal del programa, para que el usuario
%pueda elegir facilmente lo que desea serle mostrado.
%
%Una vez ejecutado el programa, basta con pulsar la tecla correspondiente.
%
%Si el valor introducido no esta comprendido en las opciones del menú, se
%mostrará un mensaje avisando al usuario de ello.

clc
clear
disp('#######  MENÚ  ########')
disp('1. Muestra las gráficas y estadísticas de las rutas ')
disp('2. Muestra las gráficas y estadísticas de los conductores')
disp('3. Cálculos de tiempo para cada conductor y ruta')
disp('4. Comprobar los límites de velocidad ')
disp('5. Cálculo de consumo de combustible para cada conductor y ruta')
disp('6. Salir')
opcion=input('Elige una opción:');
while opcion~=6
    switch opcion
        case 1
        run('Tarea1.m')
        case 2
        run('Tarea2.m')
        case 3
        disp('En construcción')
        case 4
        disp('En construcción')
        case 5
        disp('En construcción')
        otherwise
        disp('Opción incorrecta: debe ser un número entre 1 y 6')
    end
    input('Pulse una tecla para continuar')
    pause;
    disp('#######  MENÚ  ########')
    disp('1. Muestra las gráficas y estadísticas de las rutas ')
    disp('2. Muestra las gráficas y estadísticas de los conductores')
    disp('3. Cálculos de tiempo para cada conductor y ruta')
    disp('4. Comprobar los límites de velocidad ')
    disp('5. Cálculo de consumo de combustible para cada conductor y ruta')
    disp('6. Salir')
    opcion=input('Elige una opción:');
end   