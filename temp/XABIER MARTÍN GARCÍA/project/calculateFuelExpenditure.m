%We used a function to put the fuel expenditure formula. Just copied the
%given formula to insert the remaining data.


function [ fuelExpenditure ] = calculateFuelExpenditure(v,a,theta,d)
    fuelExpenditure = d*(0.00009*v+(0.021*a+0.087*theta)^2)/33;
end