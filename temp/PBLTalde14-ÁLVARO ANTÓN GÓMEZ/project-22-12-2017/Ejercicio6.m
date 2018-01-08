numSlices=50000; %numSliceri balioak eman
for route={'a1','n1'}
    for driver={'1','2'}
        
        file=sprintf('%s-driver%s-log.csv', route{1}, driver{1});
        file2=sprintf('%s-height.csv', route{1});
            %balioak irakurri
            m1=dlmread(file,',',0,0);
            m2=dlmread(file2,',',1,0);
            %balioak sartu
            logKms=m1(:,1);
            logS=m1(:,2);
            routeKms=m2(:,4);
            routeHeights=m2(:,3);
            
            totalFuelExpenditure = calculateRouteFuelExpenditure(routeKms, routeHeights, logS, logKms, numSlices); %funtzioa balioekin eman
            fuel=totalFuelExpenditure;
            %emaitza bistaratu
            fprintf('\nAnalyzing: Driver=driver%s, Route=%s\nEstimated fuel consumption: %.2f liter. \n', driver{1}, route{1}, fuel)
            

    end
end