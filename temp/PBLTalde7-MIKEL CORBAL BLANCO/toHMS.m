function [ hms ] = toHMS(seconds )
orduak=fix(seconds/3600);
minutuak=fix(rem(seconds,3600)/60);
seg=fix(rem(seconds,60));
hms=sprintf('%d:%d:%d',orduak,minutuak,seg);
end

