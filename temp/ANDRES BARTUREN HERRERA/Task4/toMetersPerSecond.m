function[ msSpeed ] = toMetersPerSecond( speedKmH )

primercambio=(speedKmH.*1000);
msSpeed= (primercambio/3600);
end