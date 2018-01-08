%With this function we are going to calculate the estimate time the driver will 
%take to do all the travel.
function [estimatedTime] = estimateTime( kms, speedKmH, numSlices)
Slices=linspace(kms(1),kms(end),numSlices);
%We will create a vector that divides the travel into 'numslices' same gaps.
lengthslices=(kms(end)-kms(1))./numSlices;
%doing this calculation we will know big is the gap we just make.
estimatedTime=0;
%this way we can create an empty vector that we will fill afterwards.
for slices=Slices
    Speed=interpolateLinearly(kms,speedKmH,slices);
    %We use the interpolateLinearly so we can know which speed are we ok that 
    %exact kilometer.
    if Speed~=0
        Time=lengthslices/Speed;
        %We will be using this to calculate the time, taking into account htat 
        %we know how long is the gap and dividing it with the speed previously
        %scored it will return us the time (hours).
    else 
    Time=0;
     end
    estimatedTime=estimatedTime+Time;
    %it will sum all the "times" while te driver is driving, when the drivers 
    %stops the speed=0 so time=0 and we will score the estimate time (hours) 
    %that he/she took to make the travel.  
end
estimatedTime=estimatedTime*3600;
%with this operation we can pass the time from hours to seconds.
end