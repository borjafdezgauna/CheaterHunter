clc
clear all

fprintf('#######  MEN�  ########:');
fprintf('\n1. Muestra las gr�ficas y estad�sticas de las rutas');
fprintf('\n2. Muestra las gr�ficas y estad�sticas de los conductores');
fprintf('\n3. C�lculos de tiempo para cada conductor y ruta');
fprintf('\n4. Comprobar los l�mites de velocidad');
fprintf('\n5. C�lculo de consumo de combustible para cada conductor y ruta');
fprintf('\n6. Salir');

i=input('\nElige una opci�n:');
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
            disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6')
            disp('<<Pulsa una tecla para continuar>>')
            pause
            mainMenu
    end
    i=input('\nElige una opci�n:');    
end

         