
    fprintf('          ####### MEN� ######## \n 1. Muestra las gr�ficas y estad�sticas de las rutas \n 2. Muestra las gr�ficas y estad�sticas de los conductores \n 3. C�lculos de tiempo para cada conductor y ruta \n 4. Comprobar los l�mites de velocidad \n 5. C�lculo de consumo de combustible para cada conductor ruta \n 6. Salir \n ')
                                                                                % Mostramos el menu en pantalla
    a=input('Elige una opci�n: ');                                              % Pedimos al usuario que elija una opci�n
while ~(a==6)                                                                   % Creamos un bucle siempre que a sea diferente a 6
     
    switch a                                                                    % Elegimos la funci�n switch porque creemos que es la que m�s se adapta a nuestras necesidades
    case 1                                                                      % A cada numero le asignamos un texto que debe mostrar y una tarea que debe ejecutar.
         disp ('Mostrando las gr�ficas y estad�sticas de las rutas')            
         run Tarea1.m
    case 2
          disp ('Mostrando las gr�ficas y estad�sticas de los conductores')
          run Tarea2.m
    case 3
          disp ('C�lculos de tiempo para cada conductor y ruta')
           run Tarea4.m
    case 4
          disp ('Comprobar los l�mites de velocidad')
          run Tarea5.m
    case 5
          disp ('Calculo de consumo de combustible para cada conductor y ruta')
          disp ('Sin hacer')
    otherwise
        disp ('Opci�n incorrecta: debe ser un n�mero entero entre 1 y 6')       % Siempre que el numero de 'a' sea diferente de 1,2,3,4 y 5 mostramos un texto de error

    end
     
    fprintf('Pulsa una tecla para continuar: \n \n');                              
    pause                                                                       % Pausa el bucle hasta que se pulsa una tecla
     clc
    fprintf('          ####### MEN� ######## \n 1. Muestra las gr�ficas y estad�sticas de las rutas \n 2. Muestra las gr�ficas y estad�sticas de los conductores \n 3. C�lculos de tiempo para cada conductor y ruta \n 4. Comprobar los l�mites de velocidad \n 5. C�lculo de consumo de combustible para cada conductor ruta \n 6. Salir \n ')
    a=input('Elige una opci�n: ');                                             % Volvemos a mostrar el menu escrito y pedimos una opci�n para que se incluya en cada bucle
end

disp ('Exit ')                                                                  % Este texto solo se muestra cuando el numero elegido es el 6