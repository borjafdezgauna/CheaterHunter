function [ hms ] = toHMS( sec )
seconds=fix(sec);
s=(rem(seconds,60));
minutu=seconds/60;
m=rem((fix(minutu)),60);
h=fix(seconds/3600);
hms=sprintf('%02.0f:%02.0f:%02.0f',h,m,s);
end
