function estimatedTime = estimateTime( kms, speedKmH, numSlices)
     estimatedTime = 0;
     msSpeed  = toMetersPerSecond( speedKmH );
     m  = toMeters( kms );
     slices = (max(m)-min(m))/numSlices;
    for  j = linspace(min(m),max(m),numSlices)
        interpolatedY = interpolateLinearly(m, msSpeed , j);
        if interpolatedY ~=0
        estimatedTime = (slices/interpolatedY)+ estimatedTime;
        else
        estimatedTime=0;
        end
    end
end