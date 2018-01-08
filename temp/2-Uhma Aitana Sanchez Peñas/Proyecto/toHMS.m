function [ hms ] = toHMS( seconds )
%Con el comando for se cambian los segundos a horas:minutos:segundos
    horas = floor(seconds / 3600);
    minutos = floor((seconds - (horas * 3600)) / 60);
    segundos = seconds - (horas * 3600) - (minutos * 60);
   
    hms=sprintf('%02.f : %02.f : %02.f',horas,minutos,segundos);
end
