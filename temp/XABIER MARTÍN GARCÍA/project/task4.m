%We made a script to output the estimated time that both drivers are going to need.

for route = {'a1','n1'}
    for driver = {'1','2'}
       log_File = sprintf('Data/%s-driver%s-log.csv', route{1}, driver{1});
       data_File = dlmread(log_File,',',1,0);
       time = estimateTime(data_File(:,1), data_File(:,2), 10000);
       format_Time = toHMS(time);
       
       fprintf('Estimated time for driver%s in route %s: %s \n', driver{1}, route{1}, format_Time) 
       
    end
end


fprintf('Press any key to continue...')
pause
run('task3.m')