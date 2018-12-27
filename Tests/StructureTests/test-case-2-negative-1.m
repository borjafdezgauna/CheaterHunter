function [consInt] = estimateSurfaceConsumption(time,depth,measuredCons)
surfCon=10:5:40;
i=1;
while measuredCons>=computeTotalAirConsume(surfCon(i),time,depth)
    i=i+1;
end
    

consInt=[surfCon(i-1) surfCon(i)];
end

