function [interpolatedY] = interpolateToTheLeft(xVector, yVector, x)
  i=1;
  %% Bi baldintza hauek betetzen badira i-ri unitate bat gehituko dugu
while i<=length(xVector) && xVector(i)<x
 i=i+1;
 end
 %% i=1 denenan unitate bat gehituko diogu gero malda kalkulatu ahal izateko
 if i==1
  i=i+1;
  end
  interpolatedY=yVector(i-1);
  end