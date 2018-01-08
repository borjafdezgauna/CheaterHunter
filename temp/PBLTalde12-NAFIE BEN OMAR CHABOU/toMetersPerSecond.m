%km/h -> m/s pasatzeko funtzioa

function [msSpeed] = toMetersPerSecond(speedKmH)
  msSpeed = speedKmH*1000/3600;
  
  end