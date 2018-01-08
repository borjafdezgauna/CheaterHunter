%%funtzio honek km/h m/s bihurtzen ditu

function [ metroseg ] =  toMetersPerSecond( kmordu )
metroaordu= toMeters(kmordu);    %%km-ak metro bihurtzeko funtzioa deitzen du eta aldagai berri batean gordetzen du
metroseg=metroaordu/3600;
end

