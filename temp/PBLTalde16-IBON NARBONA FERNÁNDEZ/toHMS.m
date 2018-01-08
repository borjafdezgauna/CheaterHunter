%Funtzio honek segunduetatik, ordu, minutu eta segunduetara pasatuko du
function [hms] = toHMS (seconds)
  orduak=fix(seconds/3600);
  minutuak=fix((seconds/3600-orduak)*60);
  segunduak=fix(((((seconds/3600-orduak)*60))-minutuak)*60);
  hms=sprintf('%02d:%02d:%02d\n',orduak,minutuak,segunduak);
  

endfunction
