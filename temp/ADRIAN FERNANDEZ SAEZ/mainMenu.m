clc
disp('####### MEN� #######:');
disp('1. Muestra las gr�ficas y estad�sticas de las rutas');
disp('2. Muestra las gr�ficas y estad�sticas de los conductores');
disp('3. C�lculos de tiempo para conductor y ruta');
disp('4. Comprobar los l�mites de velocidad');
disp('5. C�lculo de consumo de combustible para conductor y ruta');
disp('6. Salir');
option=input('Elige una opcion: ');
while option ~= 6
 switch option
    case 1 
         disp('Muestra las gr�ficas y estad�sticas de las rutas:');
    case 2 
         disp('Muestra las gr�ficas y estad�sticas de los conductores:');
    case 3 
         disp('C�lculos de tiempo para conductor y ruta:');
    case 4 
         disp('Comprobar los l�mites de velocidad:');
    case 5 
         disp('C�lculo de consumo de combustible para conductor y ruta:');
    case 6 
         disp('Salir');
    otherwise
         disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6');
option=input('Elige una opcion: ');
end


 