clear 
clc

x = input ('Introduce la posici�n: ')
xVector = [10 20 40];
yVector = [120 150 130];

interpolatedY = interpolateLinearly( xVector, yVector , x)
