function[interpolatedY]= interpolatedlinearly( xVector, yVector, x)
 i=1;
 x1=0;
 y1=0;
    while xVector(i)<x
      i=i+1;
    end
    if i==1
      i=2;
      end
   y2= yVector(i);
   y1= yVector(i-1);
   x2= xVector(i);
   x1= xVector(i-1);
   slope= (y2-y1)/(x2-x1);
   interpolatedY= y1+slope*(x-x1);
 end
