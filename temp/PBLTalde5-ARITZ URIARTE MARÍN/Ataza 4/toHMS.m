%% Segunduak sartuz ordu,sinutu,segundu formatua adierazten du
function [ hms ] = toHMS( seconds )
  orduak= fix (seconds/3600);
  DenboraOndarra= rem(seconds,3600);
  minutuak= fix(DenboraOndarra/60);
  segundoak= fix(rem(DenboraOndarra,60)); 
  h= orduak;
  m= minutuak;
  s= segundoak;
      hms=sprintf('%02d:%02d:%02d', h, m, s);  
end