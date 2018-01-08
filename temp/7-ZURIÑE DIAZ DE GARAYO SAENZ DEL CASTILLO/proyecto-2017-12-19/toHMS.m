function [hms] = toHMS(s);
    horas=fix(s/3600);
    minutos = fix((s-(horas * 3600))/60);
    segundos = s-(horas * 3600)-(minutos*60);
    
    hms=sprintf('%02s:%02s:%02s',horas, minutos, segundos);
end
