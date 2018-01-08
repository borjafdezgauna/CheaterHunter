clc
disp('####### MENÚ #######:');
disp('1. Muestra las gráficas y estadísticas de las rutas');
disp('2. Muestra las gráficas y estadísticas de los conductores');
disp('3. Cálculos de tiempo para conductor y ruta');
disp('4. Comprobar los límites de velocidad');
disp('5. Cálculo de consumo de combustible para conductor y ruta');
disp('6. Salir');
option=input('Elige una opcion: ');
while option ~= 6
 switch option
    case 1 
         disp('Muestra las gráficas y estadísticas de las rutas:');
    case 2 
         disp('Muestra las gráficas y estadísticas de los conductores:');
    case 3 
         disp('Cálculos de tiempo para conductor y ruta:');
    case 4 
         disp('Comprobar los límites de velocidad:');
    case 5 
         disp('Cálculo de consumo de combustible para conductor y ruta:');
    case 6 
         disp('Salir');
    otherwise
         disp('Opción incorrecta: debe ser un número entre 1 y 6');
option=input('Elige una opcion: ');
end


 