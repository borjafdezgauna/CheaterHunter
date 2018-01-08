function hms = toHMS(sec)
% This function gets a value in seconds and builds a string with the equivalent time formated
% in HH:MM:SS
h = fix(sec/3600);
m = fix(rem(sec, 3600)/60);
s = fix(rem(sec, 60));
hms = sprintf('%02d:%02d:%02d', h, m, s);
end