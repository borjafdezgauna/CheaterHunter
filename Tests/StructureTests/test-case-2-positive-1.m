function [consInt] = estimateSurfaceConsumption(time,depth,measuredCons)
surfaceCons= [0 10 15 20 25 30 35 40 Inf];

n=1;    
    while measuredCons >= computeTotalAirConsume(surfaceCons(n),time,depth)
        n=n+1;
    end
    
    consInt= [surfaceCons(n-1) surfaceCons(n)];
end

    
        
    

