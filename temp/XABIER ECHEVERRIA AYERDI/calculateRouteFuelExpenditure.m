function [ fuelExpenditure ] =calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices )
routemeters=toMeters(routeKms);
logmeters=toMeters(logKms);
logspeed=toMetersPerSecond(logSpeeds);
diff=max(routemeters)/numSlices;
heightVector=[];
heightVector(1)=routeHeights(1);
position=2;
fuelExpenditure=0;
for p=linspace(min(routemeters),max(routemeters),numSlices)
    speed=interpolateLinearly(logmeters,logspeed,p);
    speed2=interpolateLinearly(logmeters,logspeed,p+diff);
    acceleration=calculateacceleration(speed,speed2,diff); %We create a function for a better comprehension
    height=interpolateLinearly(routemeters,routeHeights,p);
    heightVector(position)=height;
    slope=atan((heightVector(position)-heightVector(position-1))/diff);
    fuel=calculateFuelExpenditure(speed,acceleration,slope,diff);
    fuelExpenditure=fuel+fuelExpenditure;
    position=position+1;
end
end