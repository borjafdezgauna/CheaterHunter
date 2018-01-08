function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ]=checkSpeedLimits(distantziak,abiadurak,xbektorea,ybektorea,tarteak)
diferentzia=distantziak(end)/tarteak;
 kmsAboveSpeedLimit=0;
for i = linspace(distantziak(1), distantziak(end), tarteak)
  vlimitea=interpolateToTheLeft(xbektorea,ybektorea,i);
  vdriver=interpolazioa(distantziak,abiadurak,i);
  if vlimitea<vdriver
    kmsAboveSpeedLimit=kmsAboveSpeedLimit+diferentzia;
  end
end
percentAboveSpeedLimit=kmsAboveSpeedLimit/distantziak(end)*100;
end