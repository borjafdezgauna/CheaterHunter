%Esta función convierte las velocidades introducidas en kilómetros por hora
%a metros por segundo.

function [ msSpeed ] = toMetersPerSecond( speedKmH ) 
msSpeed=(speedKmH/3600)*1000;
end