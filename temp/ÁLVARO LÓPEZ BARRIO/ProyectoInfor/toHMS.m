function [hms]=toHMS(seconds)
    minutes1=seconds/60;%Minutes with decimal
    minutes2=floor(minutes1);%Take the integer part of the minutes
    %We calculate the values for hours minutes and seconds:
    hours=minutes2/60;
    finalHours=floor(hours);
    finalMinutes=rem(minutes2,60);
    finalSeconds=rem(seconds,60);
    %Shows the result:
    hms=sprintf('%02.0f:%02.0f:%02.0f',finalHours,finalMinutes,finalSeconds); 
end
