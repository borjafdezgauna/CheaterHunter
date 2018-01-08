%function [interpolatedY]=interpolateLinearly(xVector,yVector,x)
   
    i=0;
    x2=0;
    if x<max(xVector) && x>min(xVector)
        while x>x2
            i=i+1;
            j=i-1;
            x2=xVector(i);
            y2=yVector(i);
        end
    
        if j==0
            x1=0;
            y1=0;
        else
            x1=xVector(j);
            y1=yVector(j);
        end
        
        interpolatedY=y1+(((y2-y1)/(x2-x1))*(x-x1));
    else
        disp('El valor está fuera del intervalo recorrido');
    end
    
end