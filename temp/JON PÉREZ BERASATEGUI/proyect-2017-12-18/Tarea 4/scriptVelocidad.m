clear 
clc

speedKmH = input('Introduce una velocidad: ');
msSpeed = toMetersPerSecond( speedKmH );
fprintf('toMetersPerSecond(%.f) => %.4f',speedKmH,msSpeed)