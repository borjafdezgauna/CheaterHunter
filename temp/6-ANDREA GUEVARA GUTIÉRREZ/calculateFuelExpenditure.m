function [ fuelExpenditure ] = calculateFuelExpenditure(v,a,theta,d)

calculateFuelExpenditure=[d*(0.00009*v+(0.021*a+0.087*theta)^2)]/33;

end
