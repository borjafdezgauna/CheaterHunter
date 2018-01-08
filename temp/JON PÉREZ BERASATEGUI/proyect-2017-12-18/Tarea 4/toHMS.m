function [ hms ] = toHMS( seconds ) 

        minutos = fix(rem(seconds,3600)/60);
        segundos = fix(rem(seconds,60));
        horas = fix(seconds/3600);

hms = sprintf('%02d:%02d:%02d', horas, minutos, segundos);
end


