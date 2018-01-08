function [hms] = toHMS(seconds)
%Funtzio honek sartutako segunduak ordu:minutu:segundu moduan itzultzen ditu.
 mins=seconds/60;
 min=fix(mins);
 hours=min/60;
 orduak=fix(hours);
 seg=seconds-60*min;
 segunduak=fix(seg);
 minutuak=min-60*orduak;
 hms=sprintf('%02d:%02d:%02d',orduak,minutuak,segunduak);
end