clc
clear all

kilometros=input('Dame la distancia en kilómetros:');
metros=kmam(kilometros);
fprintf('%.1f kilómetros son %.0f metros\n', kilometros,metros);