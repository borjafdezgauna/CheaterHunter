function f = calculateFuelExpenditure(v, a, theta, d)

% Function used to calculate the used fuel used by the driver for a given slope (theta), distance and acceleration

f = (d * (0.00009 * v + (0.021 * a + 0.087 * theta)^2)) / 33;
end