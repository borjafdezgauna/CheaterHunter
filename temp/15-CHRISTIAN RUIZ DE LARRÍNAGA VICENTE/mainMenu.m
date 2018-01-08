clc
clear all

fprintf('#######  MENÚ  ########:');
fprintf('\n1. Muestra las gráficas y estadísticas de las rutas');
fprintf('\n2. Muestra las gráficas y estadísticas de los conductores');
fprintf('\n3. Cálculos de tiempo para cada conductor y ruta');
fprintf('\n4. Comprobar los límites de velocidad');
fprintf('\n5. Cálculo de consumo de combustible para cada conductor y ruta');
fprintf('\n6. Salir');

i=input('\nElige una opción:');
while i~=6
    switch i
        case 1 %En caso de que el numero introducido sea el 1, se nos abrira el Ejercicio1
            Ejercicio1
            disp('<<Pulsa una tecla para continuar>>')
            pause
            mainMenu
        case 2  %En caso de que el numero introducido sea el 2, se nos abrira el Ejercicio2
            Ejercicio2
            disp('<<Pulsa una tecla para continuar>>')
            pause
            mainMenu
        case 3 %En caso de que el numero introducido sea el 3, se nos abrira el Ejercicio4
            Ejercicio4
            disp('<<Pulsa una tecla para continuar>>')
            pause
            mainMenu
            
        case 4 %En caso de que el numero introducido sea el 4, se nos abrira el Ejercicio5
            disp('No esta disponible')
            disp('<<Pulsa una tecla para continuar>>')
            pause
            mainMenu
        case 5 %En caso de que el numero introducido sea el 5, se nos abrira el Ejercicio6
            disp('No esta disponible')
            disp('<<Pulsa una tecla para continuar>>')
            pause
            mainMenu
        case 6
            pause
        otherwise 
            disp('Opción incorrecta: debe ser un número entre 1 y 6')
            disp('<<Pulsa una tecla para continuar>>')
            pause
            mainMenu
    end
    i=input('\nElige una opción:');    
end

         