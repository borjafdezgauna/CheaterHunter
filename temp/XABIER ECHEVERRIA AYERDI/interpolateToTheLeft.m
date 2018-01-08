function [ interpolatedY ] = interpolateToTheLeft( kms, speedLimit , x)
interpolatedY(1)=speedLimit(1);
for i= 1:length(kms)
  
        if x>kms(i)
            interpolatedY=speedLimit(i);
                  
        end
    
end
