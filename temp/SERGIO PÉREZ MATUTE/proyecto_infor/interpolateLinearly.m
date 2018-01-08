function [interpolatedY] = interpolateLinearly (xVector,yVector,x)
    i=1
        while x>xVector(i) && i<length(xVector)
            i=i+1
        end
      x_1=xVector(i);
      x_2=xVector(i+1);
      y_1=yVector(i);
      y_2=yVector(i+1);
      interpolatedY=y_1+((y_2-y_1)/(x_2-x_1))*(x-x_1);  
end
