function [ msSpeed ] = toMetersPerSecond( speedKmH )
  %Abiadura km/h-tik m/s-ra bihurtuko dugu.
  msSpeed=(speedKmH*1000)/3600;
end