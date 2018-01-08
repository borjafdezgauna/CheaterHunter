%Este es el script con el menú que nos permite acceder a diferentes datos
%calculados en otras tareas.

clear 
clc
%Definimos la variable antes del comando while para que muestre el titulo
%del menú según ejecutemos este script.
opcion=input('#######MENU#######\n1. Muestra las graficas y estadisticas de las rutas\n2. Muestra las graficas y estadisticas de los conductores\n3. Calculos de tiempo para cada conductor y ruta\n4. Comprobar los limites de velocidad\n5. Calculo de consumo de combustible para cada conductor y ruta\n6. Salir\nElige una opcion:\n');

%Con este while conseguimos que, hasta que el usuario no pulse el número
%6, siga dentro del menú pidiendo opciones.
while opcion~=6 %Dentro de las opciones del menú estan las llamadas a los script de las diferentes tareas.
    if opcion<1 || opcion>6
    disp('Opcion incorrecta: debe ser un número entre 1 y 6')
    elseif opcion==1
        tarea_1_optimizada
    elseif opcion==2
        tarea_2_optimizada
    elseif opcion==3
        tiempo_estimado_conductores
    elseif opcion==4
        script_limite_velocidad
    elseif opcion==5
        disp('5 No está hecho')
    end
    
opcion=input('\n#######MENU#######\n1. Muestra las graficas y estadisticas de las rutas\n2. Muestra las graficas y estadisticas de los conductores\n3. Calculos de tiempo para cada conductor y ruta\n4. Comprobar los limites de velocidad\n5. Calculo de consumo de combustible para cada conductor y ruta\n6. Salir\nElige una opcion:\n');
end