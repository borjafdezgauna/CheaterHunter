clc
clear
opcion=0;
%Utilizamos el if para que el men� se pueda usar tantas veces como el
%usuario quiera

fprintf('####### MEN� ######## \n')
fprintf('1. Muestra las gr�ficas y estad�sticas de las rutas \n')
fprintf('2. Muestra las gr�ficas y estad�sticas de los conductores \n')
fprintf('3. C�lculos de tiempo para cada conductor y ruta \n')
fprintf('4. Comprobar los l�mites de velocidad \n')
fprintf('5. C�lculo de consumo de combustible para cada conductor y ruta\n')
fprintf('6. Salir \n')
opcion=input('Elige una opci�n:');



%Aqu� se define qu� debe hacer el men� en base a la elecci�n del usuario

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
    disp('La opci�n 5 todav�a no est� disponible')
    mainMenu();
elseif opcion<=0 || opcion>6
    disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6')
elseif opcion==6
end



