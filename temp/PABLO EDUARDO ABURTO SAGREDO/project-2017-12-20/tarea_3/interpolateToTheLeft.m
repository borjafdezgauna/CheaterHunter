function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)

    i=0;
    x1=0;
    
    
    if x<=max(xVector)
        while x>=x1 
            i=i+1;
            j=i-1;
            if i==1
                x1=xVector(i);
                y1=yVector(i);
            else
                x1=xVector(i);
                y1=yVector(j);
            end
        end
    else
        y1=yVector(length(yVector));
    end
    
    interpolatedY=y1;
    
end
        
            