function [consInt] = estimateSurfaceConsumption(time,depth,measuredCons)
surfCon=[10 15 20 25 30 35 40 Inf ];
i=1;
while measuredCons>=computeTotalAirConsume(surfCon(i),time,depth)
    i=i+1;
end
    

consInt=[surfCon(i-1) surfCon(i)];
end

