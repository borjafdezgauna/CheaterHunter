function [interpolatedY]=interpolateLinearly(xVector,yVector,x)
i=1;
%% Bi baldintza hauek betetzen badira i-ri unitate bat gehituko dug
while i<length(xVector) && xVector(i)<x
 i=i+1;
 end
 %% i=1 denenan unitate bat gehituko diogu gero malda kalkulatu ahal izateko
 if i==1
  i=i+1;
  end
     %% Bi puntu kalkulatzen dugu
 x0=xVector(i-1);
 x1=xVector(i);
 y0=yVector(i-1);
 y1=yVector(i);
 if (x1-x0)~=0
   %% Funtzio linealaren ekuazioa arabera interpolatu
interpolatedY=y0+((y1-y0)/(x1-x0))*(x-x0);
end
if (x1-x0)==0
  interpolatedY=y0;
  end
end