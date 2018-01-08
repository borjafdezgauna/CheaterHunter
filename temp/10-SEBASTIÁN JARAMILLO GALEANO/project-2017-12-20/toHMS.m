function [ hms ] = toHMS( seconds )

   minutos = floor(seconds/60);
   
   horas = floor(minutos/60);
   
   totalminutos = rem (minutos,60);
   
   totalsegundos = floor (rem (seconds, 60));
   
   hms=sprintf('%02d:%02d:%02d',horas,totalminutos,totalsegundos);
   
end