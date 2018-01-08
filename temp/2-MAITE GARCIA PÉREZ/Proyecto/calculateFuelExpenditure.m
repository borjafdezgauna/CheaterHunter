function [ fuelExpenditure ] = calculateFuelExpenditure(v,a,theta,d)
%Mediante una fórmula y unos datos se calcula el combustible gastado
fuelExpenditure=(d*(0.00009*v+((0.021*a)+(0.087*theta))^2))/33
end 