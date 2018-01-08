function [ hms ] = toHMS( seconds )
minutos=floor(seconds/60);
segundos=floor(rem(seconds,60));
horas=floor(minutos/60);
minutos=floor(rem(minutos,60));

hms=sprintf('%.2d:%.2d:%.2d',horas,minutos,segundos);

end

