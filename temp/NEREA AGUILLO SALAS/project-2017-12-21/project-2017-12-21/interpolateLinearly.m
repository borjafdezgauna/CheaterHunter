function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x) 
encontrado=false;
i=1;
 if x<min(xVector) || x>max(xVector)
    interpolatedY1='La posicion debe encontrarse entre los valores del vector';
 else
  while i<=(length(xVector)-1) && encontrado==false
     if xVector(i)==x
        interpolatedY1=yVector(i);
     elseif x>xVector(i) && x<xVector(i+1)
        encontrado=true;
        x1=xVector(i);
        y1=yVector(i);
        x2=xVector(i+1);
        y2=yVector(i+1);
        interpolatedY1=y1+(((x-x1)*(y2-y1))/(x2-x1));
     end
    i=i+1;
  end
 end
 interpolatedY=interpolatedY1;
end