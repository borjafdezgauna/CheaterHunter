%Write a function that calculates the fuel expenditure for short distances
%where the speed, acceleration and slope are nearly constant:
function [ fuelExpenditure ] = calculateFuelExpenditure(speedKmH,aceleration,theta,distanceM)
v=speedKmH/3.6;
a=aceleration;
t=theta;
d=distanceM;
fuelExpenditure=(d*(0.00009*v+(0.021*a+0.087*t)^2))/33;
end