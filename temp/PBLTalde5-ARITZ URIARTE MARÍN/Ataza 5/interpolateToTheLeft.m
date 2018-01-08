function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x) 
 i=1;
  while xVector(i) < x 
   i=i+1;
  end
  if i == 1
  i=i+1;
  end
  x1=xVector(i-1);
  y1=yVector(i-1);
  interpolatedY= y1;
end