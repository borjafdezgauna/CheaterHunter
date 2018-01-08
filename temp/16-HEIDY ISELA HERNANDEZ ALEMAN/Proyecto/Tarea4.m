clc;
clear;
format compact;
toHMS(234.4);
toHMS(3601);
%------(KM-M)--------------------------
km=input('DAME km');%variable
m=toMeters(km);
disp(m)
%-------------KM/H-M/S------------------
speedKmH = input('sidfhb');
msSpeed = toMetersPerSecond(speedKmH);
disp (msSpeed);
%-------------S-H----------------------
seconds = input('segundos');
hms=toHMS(seconds);
disp (hms)

%-------------interpolación------------
interpolateLinearly([10 20 40],[120 150 130],10)
interpolateLinearly([10 20 40],[120 150 130],15)
interpolateLinearly([10 20 40],[120 150 130],25)
interpolateLinearly([10 20 40],[120 150 130],40)