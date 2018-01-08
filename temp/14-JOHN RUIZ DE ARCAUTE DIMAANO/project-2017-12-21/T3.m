clear all
clc
%este script muestra la opcion que eligas del menu siempre y cuando este
%numero sea dististo de 6 (salir) o dististo de 1,2,3,4,5 (da error)
fprintf('MENU\n 1.Muestra las grficas y estadisticas de las rutas\n 2.Muestra lsa graficas y estadisticas de los conductores\n 3.Calculos de tiempo para conductor y ruta\n 4.Comprobar los limites de velocidad\n 5.Calculo de consumo de combustible para conductor y ruta\n 6.Salir\n')
n=input('Elige una opcion:');

while n~=6
    if n==1
      T1
    elseif n==2
      T2
    elseif n==3
      T4_6
    elseif n==4
      
    elseif n==5
      
    else 
      %muestra en pantalla ('Opcion incorrecta: debe ser un numero entre 1 y 6')
      disp('Opcion incorrecta: debe ser un numero entre 1 y 6')
    
  end 
  fprintf('\n\n MENU\n 1.Muestra las grficas y estadisticas de las rutas\n 2.Muestra lsa graficas y estadisticas de los conductores\n 3.Calculos de tiempo para conductor y ruta\n 4.Comprobar los limites de velocidad\n 5.Calculo de consumo de combustible para conductor y ruta\n 6.Salir\n')
  n=input('Elige una opcion:');
end
 