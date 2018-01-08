clear 
clc

x = input ('Introduce la posición: ')
xVector = [10 20 40];
yVector = [120 150 130];

interpolatedY = interpolateLinearly( xVector, yVector , x)
