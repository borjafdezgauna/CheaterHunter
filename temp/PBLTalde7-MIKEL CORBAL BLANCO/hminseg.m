for file={'a1','n1'}
for i= 1:2
    filename= sprintf ('%s-driver%d-log.csv',file{1}, i);
    data=dlmread(filename,',');
    numSlices= 100;
    denbora= estimateTime(data(:,1),data(:,2),numSlices);
    estimatedTime= toHMS(denbora);

    
fprintf('Estimated time for driver%d in route %s:%s \n',i,file{1},estimatedTime )
end
end

