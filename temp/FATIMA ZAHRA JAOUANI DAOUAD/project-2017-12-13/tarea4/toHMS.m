clear
clc

function [ hms ] = toHMS( seconds )
h=seconds/3600
m=(mod(seconds,3600))/60
s=mod((mod(seconds,3600)),60)
hms=sprintf('%2d:%2d:%2d', h, m, s)
end