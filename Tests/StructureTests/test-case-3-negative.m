function [airCons] = computeTotalAirConsume(surfCon, time, depth)
consume= surfCon/600*(1 + depth./10);
numPoints= max(time)/0.1 + 1;
vt= linspace(min(time), max(time), numPoints);
airCons=0;
j=1;
    while j<length(vt)
        [a] = interpolateVectors(time, consume, vt(j)); 
        j=j + 1;
        airCons=airCons + a;
    end



end

