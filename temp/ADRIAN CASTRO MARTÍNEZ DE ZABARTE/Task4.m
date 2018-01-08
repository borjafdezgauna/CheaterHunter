clc
numSlices=input('accuracy:');
a={'a1','n1'};
b={'driver1','driver2'};
driverlog=('%s-%s-log.csv');
for i=1:2
    for j=1:2
        slog=sprintf(driverlog,a{i},b{j});
        dlmlog=dlmread(slog,',');
        kms=dlmlog(:,1);
        speedKmH=dlmlog(:,2);
        estTime=estimateTime(kms,speedKmH,numSlices);
        estTime2=toHMS(estTime);
        fprintf('The estimated time for %s in the route %s is:%s\n',b{j},a{i},estTime2)
    end
end
