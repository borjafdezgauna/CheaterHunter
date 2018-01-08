
%We used a function to calculate the time a driver will need to do a known
%distance. We are not sure why the results differ (by 0,2s only)with the
%ones from the example. Interpolated speed works well with the examples.

function [estimatedTime] = estimateTime(kms, speedKmH, numSlices)
    
    slice_Size = toMeters(kms(end)/numSlices);
    time = 0;
    loop = 0;
    
    for loop = 0:slice_Size:toMeters(kms(end))
        interpolated_Speed = toMetersPerSecond(interpolateLinearly(kms, speedKmH, loop/1000));
        time = time + (slice_Size/interpolated_Speed);
    end
    
    estimatedTime = time;
end

