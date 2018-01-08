function [hms] = toHMS(seconds)
HOURS=seconds/3600;
hours= fix(HOURS);
MINUTESh=HOURS-fix(HOURS);
MINUTES=MINUTESh*60;
minutes=fix(MINUTES);
SECONDSm=MINUTES-fix(MINUTES);
SECONDS=SECONDSm*60;
Seconds=fix(SECONDS);
hms=sprintf('%02d:%02d:%02d',hours,minutes,Seconds);
end
%This function will return the number of seconds given to it in each hours, minutes
%and seconds accurately.
%We used the function 'FIX' to take the integer part of the number when it is 
%divided so we kno how many hours/minutes/seconds there are.