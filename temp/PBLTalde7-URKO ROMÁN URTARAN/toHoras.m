function [ hms ] = toHoras(horas )
seconds= horas*3600;
hms=[];
orduak=fix(seconds/3600);
minutuak=fix(rem(orduak,3600)/60);
seg=rem(seconds,60);
hms=sprintf('%d:%d:%d',orduak,minutuak,seg);
end