function [result] = computeTotalAirConsume(surfCon,time,depth)
delta_t= 0.1;
maxTime= time(length(time));
numPoints= (maxTime/delta_t)+1;
timeVector= linspace(0,maxTime,numPoints);

interpolatedDepth= zeros(1,length(timeVector));
pointConsumption= zeros(1,length(timeVector));
result=0;

    for i=1:length(timeVector)
        
        interpolatedDepth(i)= interpolateVectors(time,depth,timeVector(i));
        
        pointConsumption(i)= computeAirConsumeAtDepth(surfCon,interpolatedDepth(i));
        result= result + (pointConsumption(i)*(delta_t/60));
         
        
    end
   
    
end

