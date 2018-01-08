function [interpolatedY] = interpolateLinearly(xVector, yVector , x)
 i=1;
 while i<length(xVector) && x >= xVector(i) % || x>=xVector(i)
    i=i+1;
  end
  i=i-1;
  interpolatedY=((x-xVector(i))*(yVector(i+1)-yVector(i))/(xVector(i+1)-xVector(i)))+yVector(i)   
end     