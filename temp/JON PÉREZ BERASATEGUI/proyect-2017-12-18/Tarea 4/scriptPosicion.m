clear 
clc

km = input('Introduce un valor en kilometros: ');
ms = toMeters( km );
fprintf('toMeters(%.1f) => %.f',km,ms)