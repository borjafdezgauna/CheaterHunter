function [dist, percent] = checkSpeedLimits(drivx, drivspd, distlim, spdlim, slc)

% This function gets vectors for the positions/speed for the driver, positions/speed for the speed limits
% and calculates the total amount of meters the driver drove over the limit

xD = drivx(1, end) / slc; % Calculates the xD (xDifferential) used in the for loop
x = drivx(1); % Set initial x value from the x vector
dist = 0; % Set an initial value for the total distance calculation

for i = 1:slc
   vdriv = interpolateLinearly(drivx, drivspd, x); % Calculates the interpolated driver speed
   vlim = interpolateToTheLeft(distlim, spdlim, x); % Calculates the speed limit for that position
   
   if vdriv > vlim % Compares the driver speed vs the speed limit and if it is over the limit
      % adds "xD" meters to the total distance
      dist = dist + xD;
   end
   x = x + xD; % Calculates the next position for the integration
end
percent = (dist / drivx(1, end)) * 100; % Calculates the distance percentage
end