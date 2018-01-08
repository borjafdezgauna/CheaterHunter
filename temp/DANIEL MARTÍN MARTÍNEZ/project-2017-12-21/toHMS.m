function [ hms ] = toHMS (seconds)
horas= seconds/3600;
    H= floor(horas);
    minutos = (horas - H)*60;
    M = floor (minutos);
    segundos = (minutos - M) *60;
    S = floor (segundos);
    hms = sprintf ('%d:%d:%d ',H,M,S);
end
   