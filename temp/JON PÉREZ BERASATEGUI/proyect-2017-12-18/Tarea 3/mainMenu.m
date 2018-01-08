clear
clc
opciones = {'#### MEN� ####:', '1. Muestra las gr�ficas y estad�sticas de las rutas.', '2. Muestra las gr�ficas y estad�sticas de los conductores.', '3. C�lculos de tiempo para cada conductor y ruta.', '4. Comprobar los l�mites de velocidad.', '5. C�lculo de consumo de combustible para cada conductor y ruta.','6. Salir.'};
for i = 1:length(opciones)
      fprintf('%s \n', opciones{i})
end
numero = input('Elige una opci�n: ');
if(isempty(numero))
   disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6');
   pause (3)
   mainMenu
elseif~(isnumeric(numero))
   disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6');
   pause (3)
   mainMenu
elseif numero<1 || numero>6
   disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6');
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
   disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6');
   pause (3)
end 
close all
clc
opciones = {'#### MEN� ####:', '1. Muestra las gr�ficas y estad�sticas de las rutas.', '2. Muestra las gr�ficas y estad�sticas de los conductores.', '3. C�lculos de tiempo para cada conductor y ruta.', '4. Comprobar los l�mites de velocidad.', '5. C�lculo de consumo de combustible para cada conductor y ruta.','6. Salir.'};
for i = 1:length(opciones)
    fprintf('%s \n', opciones{i})
end
numero = input('Elige una opci�n: ');
end


