%This function makes an appropriate format based on a
%input of seconds. We use 3 variables to store each
%unit of Hours, Minutes and Seconds. For Hours, we divide
%the total of seconds by 3600 and use fix to get the number
%of hours. The remaining "0.X" hours are converted into
%minutes and fixed to get "0.X" minutes. Same with seconds.

function [hms] = toHMS(seconds)
    seconds = fix(seconds);
    
    ho = 0;
    min = 0;
    sec = 0;
    
    ho = fix(seconds/3600);
    min = fix((seconds/3600 - ho)*60);
    sec = fix((((seconds/3600 - ho)*60) - fix(min))*60);
    
    hms = sprintf('%02d:%02d:%02d', ho, min, sec);
end
    

