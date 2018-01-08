function [ hms ] = toHMS( seconds )
o=(seconds-rem(seconds,3600))/3600;
m=(rem(seconds,3600)-rem(rem(seconds,3600),60))/60;
s=rem(seconds,60);
hms=sprintf('%d:%d:%d',o,m,s);
end