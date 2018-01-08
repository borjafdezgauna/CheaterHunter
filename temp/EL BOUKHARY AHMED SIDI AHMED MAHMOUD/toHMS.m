function [ hms ] = toHMS( seconds )
    %Pasamos segundos a formato HH:MM:SS
    horas=fix(seconds/3600);
    seconds=seconds-horas*3600;
    mins=fix(seconds/60);
    sec=fix(seconds-mins*60);
    hms=sprintf('%02d:%02d:%02d',horas,mins,sec);
end