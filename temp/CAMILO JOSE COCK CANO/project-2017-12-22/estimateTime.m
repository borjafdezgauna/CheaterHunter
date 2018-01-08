function et = estimateTime(x, y, slices)

% This function gets the driver speeds and positions and calculates the time it took
% to finish the trip

xD = x(1, end) / slices; % Calculates the xD (xDifferential) used in the for loop
et = 0; % Set an initial value for the total time calculation
x1 = x(1); % Set initial x value from the x vector

for i = 1:slices % This loop calculates the fractional time for each integration slice
   x2 = x1 + xD; % Calculates the x2 value wich is used for the integration slice (x2-x1)
   v = interpolateLinearly(x, y, x2); % Calculates the interpolated speed value for the slice
   t = (toMeters(x2) - toMeters(x1)) / toMetersPerSecond(v); % Calculates the time (t=distance/speed)
   % Adds the calculated time to the total time
   et = et + t;
   x1 = x1 + xD; % Calculates the x1 from the next integration slice
end
end