function [ interpolatedY ] = interpol( xVector, yVector , x)
  i=2;
  if x>xVector
      x=xVector(end);
  end
  while xVector(i)<x
    i=i+1;
  end

  x2=xVector(i);
  x1=xVector(i-1);
  y2=yVector(i);
  y1=yVector(i-1);
 
 malda= (y2-y1)/(x2-x1);

interpolatedY= y1 + malda * (x-x1);

end