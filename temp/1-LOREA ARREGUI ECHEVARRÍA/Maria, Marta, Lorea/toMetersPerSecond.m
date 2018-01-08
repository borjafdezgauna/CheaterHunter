
%Creamos una funcion llamada toMetersPerSecond con la variable speedKmh
function[msSpeed]=toMetersPerSecond(speedKmH)

%Pasamos de km/H a km/s
   msSpeed=speedKmH*1000/3600;
   
   end