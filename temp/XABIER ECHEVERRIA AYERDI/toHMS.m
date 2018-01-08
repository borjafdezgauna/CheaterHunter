 function [hms ] = toHMS( seconds )
sec=fix(rem(seconds,60));%the final seconds
minutes=floor(seconds/60);
min=rem(minutes,60);
hour=floor(minutes/60);
hms=sprintf('%02d:%02d:%02d',hour,min,sec);
end
