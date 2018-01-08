function [ hms ] = toHMS( seconds )
  %% Segunduak orduetara pasatu eta hondarra kalkulatu
HH=fix(seconds/3600);
x=rem(seconds,3600);
%% Soberan geratu diren segunduak minutuetara pasatu eta hondarra segunduak izango dira
MM=fix(x/60);
SS=fix(rem(x,60));
hms=sprintf('%02d:%02d:%02d\n',HH,MM,SS);
end