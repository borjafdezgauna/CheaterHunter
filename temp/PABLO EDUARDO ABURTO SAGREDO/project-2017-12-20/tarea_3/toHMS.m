function [ hms ] = toHMS(seconds)

%Funcion para pasar una cantidad de segundos a un formato de hh:mm:ss. Y
%que el resultado sea devuelto en formato de cadena de caracteres.
    
    horas=fix(seconds/3600);
    minutos=fix(rem(seconds,3600)/60);
    segundos=fix(rem(rem(seconds,3600),60));
   
    hms=sprintf('%02d:%02d:%02d\n',horas,minutos,segundos);
end