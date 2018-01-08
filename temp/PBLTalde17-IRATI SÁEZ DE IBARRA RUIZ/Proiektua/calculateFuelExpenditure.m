function [fuelExpenditure] = calculateFuelExpenditure(v,a,theta,d)
%Funtzio honek erregai kontsumoa(L-tan) kalkulatzen du.
%Sartu beharreko datuak:abiadura(m/s),azelerazioa(m/s^2),aldapa angelua(rad) eta distantzia(m)
 fuelExpenditure= (d.*(0.00009.*v+(0.021.*a+0.087.*theta).^2))./33;
end  