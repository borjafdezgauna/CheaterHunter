function hms=toHMS(seconds)
%El comando fix nos redondea 
    HH=fix(seconds/3600); 
    SS=fix(rem(seconds,3600));
    MM=fix(SS/60);
    SS=fix(rem(SS,60));
    hms=sprintf('%02d:%02d:%02d',HH,MM,SS);
end