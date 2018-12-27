function [airCons] = computeTotalAirConsume(surfCon,time,depth)
delta_t= 0.1;
totalTime= time(length(time));
numPoints= (totalTime/delta_t)+1;
timeVector= linspace(0,totalTime,numPoints);
depthVector= zeros(1,length(timeVector));
airConsume= zeros(1,length(timeVector));
airCons=0;
for i=1:length(timeVector)
    depthVector(i) = interpolateVector(time,depth,timeVector(i));
    airConsume(i)= computeAirConsumeAtDepth(surfCon,depthVector(i));
   airCons= airCons + ((airConsume(i))*(delta_t/60));
    
end
end

