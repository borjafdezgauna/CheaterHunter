clear
clc
opciones = {'#### MENÚ ####:', '1. Muestra las gráficas y estadísticas de las rutas.', '2. Muestra las gráficas y estadísticas de los conductores.', '3. Cálculos de tiempo para cada conductor y ruta.', '4. Comprobar los límites de velocidad.', '5. Cálculo de consumo de combustible para cada conductor y ruta.','6. Salir.'};
for i = 1:length(opciones)
      fprintf('%s \n', opciones{i})
end
numero = input('Elige una opción: ');
if(isempty(numero))
   disp('Opción incorrecta: debe ser un número entre 1 y 6');
   pause (3)
   mainMenu
elseif~(isnumeric(numero))
   disp('Opción incorrecta: debe ser un número entre 1 y 6');
   pause (3)
   mainMenu
elseif numero<1 || numero>6
   disp('Opción incorrecta: debe ser un número entre 1 y 6');
   pause (3)
   mainMenu
end

while isempty(numero)|| ~isnumeric(numero) || numero~=6 
if numero==1
   graficas_estadisticas_rutas
   pause
elseif numero==2
   graficas_estadisticas_conductores
   pause
elseif numero==3
   scriptRutaConductor
   pause
elseif numero==4
   limites_velocidad
   pause
elseif numero==5
   combustible_conductor_ruta
   pause
else 
   disp('Opción incorrecta: debe ser un número entre 1 y 6');
   pause (3)
end 
close all
clc
opciones = {'#### MENÚ ####:', '1. Muestra las gráficas y estadísticas de las rutas.', '2. Muestra las gráficas y estadísticas de los conductores.', '3. Cálculos de tiempo para cada conductor y ruta.', '4. Comprobar los límites de velocidad.', '5. Cálculo de consumo de combustible para cada conductor y ruta.','6. Salir.'};
for i = 1:length(opciones)
    fprintf('%s \n', opciones{i})
end
numero = input('Elige una opción: ');
end


