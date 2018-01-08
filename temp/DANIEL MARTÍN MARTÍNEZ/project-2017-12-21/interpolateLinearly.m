function [interpolatedY]= interpolateLinearly (xVector, yVector, x)


for i=1:(length(xVector)-1)
    i=i+1;
    if x>=xVector(i-1) && x<=xVector(i)
        
        m= (yVector(i)-yVector(i-1))/(xVector(i)-xVector(i-1));
        interpolatedY=m*(x-xVector(i-1))+yVector(i-1);
   
    end
end

end