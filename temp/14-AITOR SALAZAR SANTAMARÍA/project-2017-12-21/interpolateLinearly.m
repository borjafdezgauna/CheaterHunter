function [interpolatedY]=interpolateLinearly(xVector,yVector,x)
  % Esta función recibe un vector con los valores de x, otro
  % con los valores de y, y devuelve el valor interpolado de y para un x dado.
  n=1;
    while n<length(xVector) &&  xVector(n)<=x
     n=n+1;    
     end
     n=n-1;
          y2=yVector(n+1);
          y1=yVector(n);
      
          x2=xVector(n+1);
          x1=xVector(n);
          
          interpolatedY =y1+(((y2-y1)*(x-x1))/(x2-x1));
  
end 