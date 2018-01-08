function  interpolatedY  = interpolateToTheLeft(xVector, yVector, x)
%mn definitu
mn=length(xVector);

    for a=1:mn %bektorearen balioak banan banan hartu

        if x > xVector(a)  %baldintza betetzean, hori egiteko
           
            interpolatedY = yVector(a);
        
        elseif x==xVector(a) %bestela, beste hori egiteko
            
            interpolatedY=yVector(a);
            
        elseif x<xVector(a) %bestela, aurreko puntuaren abiadura
            
            interpolatedY=yVector(a-1);

        end
    end  
end