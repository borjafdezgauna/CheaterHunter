clc
fprintf('####### MENU ########:\n')
fprintf('1. Muestra las graficas y estadisticas de las rutas\n')
fprintf('2. Muestra las graficas y estadisticas de los conductores\n')
fprintf('3. Calculos de tiempo para cada conductor y ruta\n')
fprintf('4. Comprobar los limites de velocidad\n')
fprintf('5. Calculo de consumo de combustible para cada conductor y ruta\n')
fprintf('6. Salir\n')


  
 opcionelegida=input('Elige una opcion: ');
 while opcionelegida ~=6

        if opcionelegida== 1 
            clc 
            Tarea1
  
        elseif opcionelegida== 2
            clc
            Tarea2
      
        elseif opcionelegida== 3
           clc
           Tarea4
    
        elseif opcionelegida== 4
           clc
            disp('Esta en proceso ');
            disp('pulse una tecla ');   
            pause
    
       elseif opcionelegida== 5
           clc
           disp('Esta en proceso ');
           disp('pulse una tecla ');   
           pause
   
  else
      clc 
      clear
      disp('Opcion incorrecta: debe ser un numero entre 1 y 6 ');
       disp('pulse una tecla ');   
       pause
              
  end
  
  
    clc
    fprintf('####### MENU ########:\n')
    fprintf('1. Muestra las graficas y estadisticas de las rutas\n')
    fprintf('2. Muestra las graficas y estadisticas de los conductores\n')
    fprintf('3. Calculos de tiempo para cada conductor y ruta\n')
    fprintf('4. Comprobar los limites de velocidad\n')
    fprintf('5. Calculo de consumo de combustible para cada conductor y ruta\n')
    fprintf('6. Salir\n')
    opcionelegida=input('Elige una opcion: ');
    
 end

clc
clear
disp('gracias por haber utilizado el programa');