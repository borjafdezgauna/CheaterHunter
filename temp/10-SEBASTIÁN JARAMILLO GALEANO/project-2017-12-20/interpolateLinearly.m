function [interpolatedY]=interpolateLinearly(xVector,yVector,x)

    i=1;
    while xVector(i)>x 
       i=i+1;
    end
    
    y2=yVector(i+1);
    y1=yVector(i);
    x2=xVector(i+1);
    x1=xVector(i);
    
    interpolatedY = y1+(x-x1)*((y2-y1)/(x2-x1));
       
end