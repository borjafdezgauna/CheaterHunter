

function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x )

    if ( x < xVector(1) )
        
        interpolatedY = NaN;
        
    else
        
        i = length( xVector );

        while xVector( i ) > x 

            i = i - 1;

        end 
    
        interpolatedY = yVector( i );
        
    end

end

