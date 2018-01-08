function [ hms ] = toHMS( seconds )
h=fix(seconds/3600);
m=fix((seconds/60)-(h*60));
s=fix((seconds)-(m*60)-(h*3600));
hms=sprintf('%02d:%02d:%02.0f',h,m,s);
end
