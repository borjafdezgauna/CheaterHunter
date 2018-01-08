%funtzio honek lortu egiten du bektore bat x-values eta beste bektore bat
%y-values-ekin eta interpolazio bat bueltatzen du y-rena emandako x-ekin

function [interpolatedY] = lerp( xValues, yValues ,x)
   
   
    i = 1;
while xValues(i)<=x
  i=i+1;
  end
  
  if i == 1;
    i = 2;
    end
  x1 = xValues(i);
  y1 = yValues(i);
  x0 = xValues(i-1);
  y0 = yValues(i-1);
  interpolatedY = y0+((y1-y0)/(x1-x0))*(x-x0);
  endfunction
  





