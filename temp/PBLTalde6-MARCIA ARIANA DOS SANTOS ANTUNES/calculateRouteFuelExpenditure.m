function[fuel]=calculateRouteFuelExpenditure (logKms,logSpeed,routeKms,routeHeights,numSlices)
fuel=0;
fuelExpenditure=0;
route=linspace(routeKms(1),routeKms(length(routeKms)),numSlices);
log=linspace(logKms(1),logKms(length(logKms)),numSlices);
dx=((routeKms(length(routeKms))-routeKms(1))/numSlices);
dx=(toMeters(dx));
for i=2:numSlices
  h0=interpolateLinearly(routeKms,routeHeights,route(i-1));
  h1=interpolateLinearly(routeKms,routeHeights,route(i));
  if logKms(i-1)~=0
  v0=interpolateLinearly(logKms,logSpeed,log(i-1));
  v0= toMetersPerSecond(v0);
  v1=interpolateLinearly(logKms,logSpeed,log(i));
  v1 = toMetersPerSecond(v1);
  if v0~=0
  a=(v1-v0)/(dx/v0);
 theta=atan((h1-h0)/(toMeters(route(i))-(toMeters(route(i-1)))));
 [fuelExpenditure]=calculateFuelExpenditure(v0,a,theta,dx);
  end 
  fuel=fuelExpenditure+fuel;
  end
  end