%pasa de segundo a horas, minutos y segundos
function toHMS = toHMS(seconds)
    horas=(seconds/3600);
    minutos=(horas-floor(horas))*60;
    segundos=(minutos-floor(minutos))*60;
    % crea una nueva cadena (string) con sprintf
    toHMS=sprintf('%02d:%02d:%02d',floor(horas),floor(minutos),floor(segundos));
end
