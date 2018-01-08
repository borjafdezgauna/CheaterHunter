function [hms] = toHMS(seconds)
 
    Sec=fix(rem(seconds,60)); %segunduak zatiketaren HONDARRA (rem) izango dira, eta honi HAMARTARRAK KENDU (fix)
    Minutuak=(seconds/60);
    Min=fix(rem(Minutuak,60));%minutuak zatiketaren HONDARRA (rem) izango dira, eta honi HAMARTARRAK KENDU (fix)
    Hours=fix(Minutuak/60);
    hms=sprintf('%d:%02d:%02d',Hours,Min,Sec); %eskatzen den formatua bistaratu
 
end
  