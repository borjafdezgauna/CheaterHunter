%Stablish all the variables to interpolate the vectors for doing the
%integration and can calculate the total air consume
function airCons = computeTotalAirConsume(surfCon, time, depth)
delta_t=0.1;
tTime=time(length(time));
numPoints=(tTime/delta_t)+1;
t=linspace(0,tTime,numPoints);
d=zeros(1,length(t));
airConsume=zeros(1,length(t));
airCons=0;
for i=1:length(t)
    d(i)= interpolateVectors(time,depth,t(i) );
    airConsume(i)=computeAirConsumeAtDepth( surfCon,d(i) );
    airCons=airCons+(airConsume(i))*(delta_t/60);
end

end