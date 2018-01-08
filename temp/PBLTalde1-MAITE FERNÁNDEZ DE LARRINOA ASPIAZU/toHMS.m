% 4. ATAZA:
% Scrit honek gifdari bakoitzak egin duen bidea burutzeko behar izan duen
% denbora aztertzen du:

%5 partea: funtzio honek segundu kopuru bat emanda, karaktere kate bat
% itzultzen duen (orduak, minutuak and segunduak,
% bakoitza bi digituekin).


function [hms] = toHMS(segunduak)
    segunduak = fix(segunduak);
    orduak = fix(segunduak/3600);
    minutuak = fix((segunduak/3600 - orduak)*60);
    segunduak = fix((((segunduak/3600 - orduak)*60) - fix(minutuak))*60);
    hms = sprintf('%.0f:%.0f:%.0f', orduak, minutuak, segunduak);
end
    

