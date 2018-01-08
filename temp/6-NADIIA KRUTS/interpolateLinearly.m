function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
  
ia=1;
ib=1;
i=1;

  while(x>xVector(i)&&i<length(xVector))
    ia=i;
    i=i+1;
  end
  
ib=i;
  
  if(ia==ib)
    interpolatedY=yVector(ia);
    else
    interpolatedY=yVector(ia)+(((yVector(ib)-yVector(ia))/(xVector(ib)-xVector(ia)))*(x-xVector(ia)) );
  end

end