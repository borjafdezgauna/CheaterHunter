function [ fuelExpendituretotal ] =calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices );
  %%beharrezkoak diren posizio, abiadura... bektore nuluak sortu eta beharrezkoak diren unitate aldaketak egin%%
  diff=ToMeters(routeKms(length(routeKms))/numSlices);
  routeKmsmeters=ToMeters(routeKms);
  logKmsmeters=ToMeters(logKms);
  logSpeedsmeters=toMetersPerSecond(logSpeeds);
  fuelExpenditure=zeros(1,numSlices);
  abiadura=zeros(1,numSlices);
  azelerazioa=zeros(1,numSlices);
  rutarenaltuerak=zeros(1,numSlices);
  rutarendistantziak=zeros(1,numSlices);
  abiadura(1)=0.01; 
  %%Puntu bakoitzeko magnitudeak kalkulatu%%
  for step= 2: (numSlices)
  rutarendistantziak(step)=diff*step;
  gidariarendistantziak(step)=diff*step;
  rutarenaltuerak(step) = interpolateLinearly (routeKmsmeters,routeHeights , rutarendistantziak(step));
  abiadura(step) = interpolateLinearly (logKmsmeters, logSpeedsmeters,gidariarendistantziak(step));
   %%abiadura 0 denean zatiketa ezinezkoa izango litzateke, division by zero=error%%
   if abiadura(step) ~=0
    azelerazioa(step) = (abiadura(step)-abiadura(step-1))/(diff/abiadura(step-1));
    theta= atan((rutarenaltuerak(step)-rutarenaltuerak(step-1))/(rutarendistantziak(step)-rutarendistantziak(step-1)));
    [ fuelExpenditure(step) ] = calculateFuelExpenditure(abiadura(step),azelerazioa(step),theta,gidariarendistantziak(step));
   end 
  end
  %%zati bakoitzaren fuel kantitatea batu, totala kalkulatzeko%%
  fuelExpendituretotal=sum(fuelExpenditure); 
end