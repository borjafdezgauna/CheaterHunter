function [ hms ] = toHMS( seconds )
horas=fix(seconds/3600);
%Fix se utiliza para conseguir el numero entero de esa division.
minutos=fix(rem(seconds,3600)/60);
%Rem se usa para manejar el resto de la division anterior.
segundos=fix(rem(rem(seconds,3600),60));
hms=sprintf('%02d:%02d:%02d',horas,minutos,segundos);
%Empleamos sprintf para colocar las horas, minutos y segundos como cadena
%de caracteres.
end     
  
%Funcion para expresar los segundos en horas minutos y segundos.