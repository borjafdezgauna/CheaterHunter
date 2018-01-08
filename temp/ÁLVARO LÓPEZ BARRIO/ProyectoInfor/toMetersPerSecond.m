function [ msSpeed ] = toMetersPerSecond( speedKmH )
    msSpeed=speedKmH/3.6;%We have used a conversion factor to pass from m/s to Km/H
end
