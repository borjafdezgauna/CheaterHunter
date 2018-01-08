function [msSpeed] = toMetersPerSecond(speedKmH)
%Funtzio honek abiadura km/h-tan jasotzen du eta m/s-tan itzultzen du.
 msSpeed= speedKmH*1000/3600;
end