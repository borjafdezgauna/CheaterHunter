leters={'a1','n1'};
drivers={'driver1','driver2'};
numSlices=100;
%%We use this 'for' to the names of the files of every driver in every route.

for x=[1,2]
   
   for y=[1,2]
    %%this will read the files and will create vectors for the distance and 
    %%speed. 
    filenamedriver=sprintf('%s-%s-log.csv',leters{x},drivers{y});
    distancespeed=dlmread(filenamedriver, ',');
    kms=distancespeed(:,1);
    speedKmH=distancespeed(:,2);
    %%In this part we will use 'estimateTime' function to calculate the time the
    %%driver took and will convert it in hours:minutes:seconds format, using the
    %%'toHMS' function. 
    seconds=estimateTime(kms, speedKmH, numSlices);

    time = toHMS (seconds);

    fprintf('Estimated time for %s in route %s: %s\n',drivers{y},leters{x},time)

    end
end
  