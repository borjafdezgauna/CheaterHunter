function rfuelExp = calculateRouteFuelExpenditure(rKms, rHeights, logKms, logSpeeds, slc)
xD = rKms(1, end) / slc; % Calculates the xD (xDifferential) used in the for loop
rfuelExp = 0; % Set an initial value for the total fuel calculation
x1 = rKms(1); % Set initial x value from the rout distance vector (rKms)
h1 = rHeights(1); % Set initial x value from the route elevation vector (rHeights)
d = toMeters(xD); % Converts the xDifferential to meters, which is needed for the fractional fuel
% consumption function
for i = 1:slc
   x2 = x1 + xD; % Calculates the x2 value wich is used for the integration slice (x2-x1)
   h2 = interpolateLinearly(rKms, rHeights, x2); % Calculates the interpolated heigh for the x2 position
   
   % Calculates the slope between the h1 and h2 points
   theta = atan((h2 - h1)/(toMeters(x2) - toMeters(x1)));
   
   % Calculates te acceleration by calculating the interpolated speeds for the integration slice
   % and substracting them
   s1 = toMetersPerSecond(interpolateLinearly(logKms, logSpeeds, x1));
   s2 = toMetersPerSecond(interpolateLinearly(logKms, logSpeeds, x2));
   a = s2 - s1;
   
   % Calculates the fuel used for the current slice
   f = calculateFuelExpenditure(s1, a, theta, d);
   
   % Adds the calculated fuel to the total fuel
   rfuelExp = rfuelExp + f;
   
   % Calculate the next n1 for the following integration slice and its intepolated height
   x1 = x2;
   h1 = interpolateLinearly(rKms, rHeights, x1);
end
end