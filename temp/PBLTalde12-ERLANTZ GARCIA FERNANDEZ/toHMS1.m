%estimateTime egin eta gero ematen digun segundoak, ordu:minuto:segundora pasatzeko
%funtzioa

function [hms] = toHMS1(seconds)
 
horas = floor(seconds/3600);
if seconds >= 3600
minutos = floor((seconds-(horas*3600))/60);
end
if seconds < 3600
minutos = floor(seconds/60);
end
segs = seconds-(horas*3600)-(minutos*60);
 
hms = sprintf('%0.2d:%0.2d:%0.2d',horas,minutos,segs);

fprintf('Estimated time for driver1 in route n1: %02d:%02d:%0.2d\n\n',horas,minutos,segs);
end