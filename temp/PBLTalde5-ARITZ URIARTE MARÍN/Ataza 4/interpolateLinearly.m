%%Balore batzuen interpolarizazio lineala kalkulatu
function [ interpolatedY ] = interpolateLinearly(xVector,yVector,x )
  i=1;
  while xVector(i) < x 
   i=i+1;
    end
 if i == 1
  i=i+1;
   end
  x2=xVector(i);
  y2=yVector(i);
  x1=xVector(i-1);
  y1=yVector(i-1);
  malda= (y2 - y1)/(x2-x1);
  interpolatedY= y1+ malda *(x-x1);
end