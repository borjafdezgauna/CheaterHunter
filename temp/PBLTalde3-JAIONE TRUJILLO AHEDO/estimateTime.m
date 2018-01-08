function [estimatedTime]=estimateTime(kms,speedKmH,numSlices)
    estimatedTime=0;
    delta_x=max(kms)/numSlices;
    for i=1:numSlices
        x=(i-1)*delta_x;
        y=interpolateLinearly(kms,speedKmH,x);
        estimatedTime=estimatedTime+(delta_x/y);
    end
    estimatedTime=estimatedTime*3600;
end          