clc
clear
opcion=0;
%Utilizamos el if para que el menú se pueda usar tantas veces como el
%usuario quiera

fprintf('####### MENÚ ######## \n')
fprintf('1. Muestra las gráficas y estadísticas de las rutas \n')
fprintf('2. Muestra las gráficas y estadísticas de los conductores \n')
fprintf('3. Cálculos de tiempo para cada conductor y ruta \n')
fprintf('4. Comprobar los límites de velocidad \n')
fprintf('5. Cálculo de consumo de combustible para cada conductor y ruta\n')
fprintf('6. Salir \n')
opcion=input('Elige una opción:');



%Aquí se define qué debe hacer el menú en base a la elección del usuario

if opcion==1
    Tarea_1;
        mainMenu();
elseif opcion==2
    Tarea_2;
        mainMenu();
elseif opcion==3
    Tarea_4
    mainMenu();
elseif opcion==4
    Tarea_5
    mainMenu();
elseif opcion==5
    disp('La opción 5 todavía no está disponible')
    mainMenu();
elseif opcion<=0 || opcion>6
    disp('Opción incorrecta: debe ser un número entre 1 y 6')
elseif opcion==6
end



