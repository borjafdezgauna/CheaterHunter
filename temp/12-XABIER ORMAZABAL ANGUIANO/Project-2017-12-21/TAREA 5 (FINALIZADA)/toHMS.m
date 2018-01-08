function hms= toHMS (seconds)
horas=seconds/3600;
horas=floor(horas);
minutos=rem(seconds,3600)/60;
segundos=minutos-floor(minutos);
minutos=floor(minutos);
segundos=segundos*60;
segundos=floor(segundos);
hms=sprintf('%02d:%02d:%02d',horas,minutos,segundos);
end