%%Funtzio honek denbora segunduetatik OO:MM:SS formatura pasako dugu eta
%%HMS aldagaian gordeko du

function [HMS] = SegtoHMS (denbora)
minutuak=denbora/60;
segunduak=rem(denbora,60);
minutuak=fix(minutuak);
orduak=minutuak/60;
minutuak=rem(minutuak,60);
orduak=fix(orduak);
segunduak=fix(segunduak);
HMS=sprintf('%.2d:%.2d:%.2d',orduak,minutuak,segunduak);
end