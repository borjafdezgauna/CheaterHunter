%Tarea completa poner tarea 1 y 2 las completas
clc 
clear all
x=input('####### MENU ########:\n 1. Muestra las gráficas y estadísticas de las rutas\n 2. Muestra las gráficas y estadísticas de los conductores\n 3. Cálculos de tiempo para cada conductor y ruta\n 4. Comprobar los límites de velocidad\n 5. Cálculo de consumo de combustible para cada conductor y ruta\n 6. Salir\n Elige una opcion:')

while x~=6 
  
    if x==1
        Tarea1
        
    elseif x==2
        Tarea2
        
    elseif x==3
        %Tarea4(aun por acabar)  
        
    elseif x==4   
         %Tarea5(aun por acabar)  
       
    elseif x==5   
         %Tarea6(aun por acabar)
        
   
    else        
        disp('Opción incorrecta: debe ser un número entre 1 y 6')
        
    end
    x=input('####### MENU ########:\n 1. Muestra las gráficas y estadísticas de las rutas\n 2. Muestra las gráficas y estadísticas de los conductores\n 3. Cálculos de tiempo para cada conductor y ruta\n 4. Comprobar los límites de velocidad\n 5. Cálculo de consumo de combustible para cada conductor y ruta\n 6. Salir\n Elige una opcion: ')
    clc
    
end
