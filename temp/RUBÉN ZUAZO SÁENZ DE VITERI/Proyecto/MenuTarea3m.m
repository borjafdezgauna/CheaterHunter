%Tarea completa poner tarea 1 y 2 las completas
clc 
clear all
x=input('####### MENU ########:\n 1. Muestra las gr�ficas y estad�sticas de las rutas\n 2. Muestra las gr�ficas y estad�sticas de los conductores\n 3. C�lculos de tiempo para cada conductor y ruta\n 4. Comprobar los l�mites de velocidad\n 5. C�lculo de consumo de combustible para cada conductor y ruta\n 6. Salir\n Elige una opcion:')
%El while funcionar� para todo numero diferente de 6
%Cuando el numero introducido sea 6(salir) solo se ejecuta el clc de borrar el
%command windows para que no aparezca nada m�s
while x~=6 
  %Con los numeros del 1-5 aparecen los resultados de las tareas
  %correspondientes.
    if x==1
        Tarea1
        
    elseif x==2
        Tarea2
        
    elseif x==3
        Tarea4  
        
    elseif x==4   
        Tarea5
       
    elseif x==5   
         %Tarea6(aun por acabar)
        
   %Si el numero introducido no esta en el intervalo(1,6) se ejecuta el
   %comentario de opcion incorrecta.
    else        
        disp('Opci�n incorrecta: debe ser un n�mero entre 1 y 6')
        
    end
    %El menu vuelve a aparecer siempre que el numero introducido no sea 6
    x=input('####### MENU ########:\n 1. Muestra las gr�ficas y estad�sticas de las rutas\n 2. Muestra las gr�ficas y estad�sticas de los conductores\n 3. C�lculos de tiempo para cada conductor y ruta\n 4. Comprobar los l�mites de velocidad\n 5. C�lculo de consumo de combustible para cada conductor y ruta\n 6. Salir\n Elige una opcion: ')
    clc
    
end
