clear
clc

opciones = {'#### MEN� ####:', '1. Muestra las gr�ficas y estad�sticas de las rutas.', '2. Muestra las gr�ficas y estad�sticas de los conductores.', '3. C�lculos de tiempo para cada conductor y ruta.', '4. Comprobar los l�mites de velocidad.', '5. C�lculo de consumo de combustible para cada conductor y ruta.','6. Salir.'};

for i = 1:length(opciones)
    fprintf('%s \n', opciones{i})
end
numero = input('Elige una opci�n: ');