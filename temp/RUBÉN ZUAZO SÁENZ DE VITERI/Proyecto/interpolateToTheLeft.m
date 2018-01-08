function [ interpolatedLimitY ] = interpolateToTheLeft( xVector, yVector , x)
    i=1;
    while i<=length(xVector)  && x>=xVector(i)

        i=i+1;
          
    end
        interpolatedLimitY= yVector(i-1);
end
%Mediante esta función obtenemos el limite de velocidad que se permite en
%esos slices. La interpolacion es por la izquierda, por eso ponemos i-1
%para que coja el valor de la izquierda del yVector(velocidad maxima).