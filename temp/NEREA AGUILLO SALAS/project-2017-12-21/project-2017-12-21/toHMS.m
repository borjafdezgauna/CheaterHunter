function [ hms ] = toHMS( seconds )
minutos=floor( seconds/60);
horas_totales=floor(minutos/60) ;
minutos_totales=rem(minutos,60);
segundos_totales=rem(seconds,60);
hms= sprintf ('%02.0f:%02.0f:%02.0f',horas_totales,minutos_totales,segundos_totales);
end