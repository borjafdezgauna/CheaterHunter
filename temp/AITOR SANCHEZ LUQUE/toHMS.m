%%this function we give the time in seconds and it will convert them into 
%%hours:minutes:seconds format.
function [hms] = toHMS (seconds)
  sans=rem(seconds,60);
  x=seconds/60;
  minans=rem((x-sans/60),60);
  y=(x-sans/60)/60;
  hans=y-minans/60;
 hms=sprintf('%02d:%02d:%02.f',hans,minans,sans);
 end