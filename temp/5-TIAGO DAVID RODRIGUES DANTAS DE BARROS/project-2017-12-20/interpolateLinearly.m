function [interpolatedY] = interpolateLinearly (xVector, yVector, x)i=1;f=length (xVector)%interpolatedY=interp1(xVector,yVector,x);  while x<xVector(i+1)&& i<xVector(f-1)  i=i+1;  end A=xVector(i+1)-xVector(i); C=yVector(i+1)-yVector(i);pendiente=C/A;Y=pendiente*(x-xVector(i))+yVector(i); end