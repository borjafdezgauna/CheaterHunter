function [hms]=toHMS(seconds)

hours=fix(seconds/3600);
minutes=fix(rem(seconds, 3600)/60);
a=(rem(seconds, 3600)/60);
seconds=fix(60*(rem(a,1)));
hms=sprintf('%02d:%02d:%02d', hours, minutes, seconds);
end