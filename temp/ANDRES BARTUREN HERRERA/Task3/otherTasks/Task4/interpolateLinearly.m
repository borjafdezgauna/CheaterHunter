function[ interpolatedY ] = interpolateLinearly( xVector, yVector , x)

if ( x < xVector(1) || x > xVector( length(xVector) ) )
        interpolatedY = NaN;
    else
        i = 1;
        while xVector( i ) < x 
            i = i + 1;
        end
        
        if ( i == 1 )
            xa = xVector( 1 );
            xb = xVector( 2 );
            ya = yVector( 1 );
            yb = yVector( 2 );
        else
            xa = xVector( i - 1 );
            xb = xVector( i );
            ya = yVector( i - 1 );
            yb = yVector( i );
        end
            
        interpolatedY = ya + ( x  - xa ) * ( (yb - ya) / ( xb-xa ) );
   
    end
end