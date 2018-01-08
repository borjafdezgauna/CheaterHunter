%We write a function that calculates the fuel expenditure for short distances
%where the speed, acceleration and slope are nearly constant:
function fuelExpenditure=calculateFuelExpenditure(v,a,theta,d)
  fuelExpenditure=d*(0.00009*v+(0.021*a+0.087*theta)^2)/33;
end
