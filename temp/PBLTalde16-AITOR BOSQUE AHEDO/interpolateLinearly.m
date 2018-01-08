%Funtzio hau x eta y balio bilduma bat linealki interpolatzeko balio du
function [ interpolatedY ] = interpolateLinearly ( xVector, yVector , x)
  i=1;
  while xVector(i)<=x
  i=i+1;
  end
  x1= xVector(i);
  x0= xVector(i-1);
  y1=yVector(i);
  y0= yVector(i-1);
  interpolatedY=y0+((y1-y0)/(x1-x0))*(x-x0);
  
endfunction
