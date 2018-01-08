clear
clc

opciones = {'#### MENÚ ####:', '1. Muestra las gráficas y estadísticas de las rutas.', '2. Muestra las gráficas y estadísticas de los conductores.', '3. Cálculos de tiempo para cada conductor y ruta.', '4. Comprobar los límites de velocidad.', '5. Cálculo de consumo de combustible para cada conductor y ruta.','6. Salir.'};

for i = 1:length(opciones)
    fprintf('%s \n', opciones{i})
end
numero = input('Elige una opción: ');