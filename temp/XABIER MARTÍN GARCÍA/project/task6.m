
%We used 2 loops to output the fuel consumption for both routes and drivers.


for route = {'a1','n1'}

    for driver = {'1','2'}
       
       log_File = sprintf('Data/%s-driver%s-log.csv', route{1}, driver{1});
       data_log_File = dlmread(log_File,',',1,0);
       height_file = sprintf('Data/%s-height.csv', route{1});
       data_height_file = dlmread(height_file, ',' , 1,0);
       
       routeKms = data_height_file(:,4);
       routeHeights = data_height_file(:,3);
       logKms = data_log_File (:,1);
       logSpeeds = data_log_File (:,2);
       
       fuel = calculateRouteFuelExpenditure(routeKms, routeHeights, logKms, logSpeeds, 10000);
       
       fprintf('\n Analyzing: Driver = driver%s, Route = %s \n Estimated fuel consumption: %d liters of fuel \n', driver{1}, route{1}, fuel)
    end

end

fprintf('\n Press any key to continue...')
pause
run('task3.m')