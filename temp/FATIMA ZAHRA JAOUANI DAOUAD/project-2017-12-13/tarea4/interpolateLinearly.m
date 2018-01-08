clear
clc

function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
  interpolatedY=interp1(xVector, yVector, x, 'linear')
  disp('el valor interpolado para los valores seleccionados es',interpolatedY)
  end
  