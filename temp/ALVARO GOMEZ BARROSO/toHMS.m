%Esta función, convierte la cantidad de segundos introducida a una cadena
%de carácteres con el formato HH:MM:SS sin tener en cuenta las fracciones
%de segundo.

function [ hms ] = toHMS( t )
hours = floor(t / 3600);
t1 = t - hours * 3600;
mins = floor(t1 / 60);
secs = floor(t1 - mins * 60);

fprintf('%.2d:%.2d:%.2d\n',hours,mins,secs)
end

