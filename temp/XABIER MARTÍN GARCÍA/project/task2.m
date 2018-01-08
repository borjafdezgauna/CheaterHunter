

%This script, plots at what speed are both drivers going in all the points
%both rotes and it prints min/max/mean speed and the standard deviation for
%each driver in each driver in each route. 


data_File = 0;
loop = 1;

for route = {'a1','n1'}
    for driver = {'1','2'}
       log_File = sprintf('Data/%s-driver%s-log.csv', route{1}, driver{1});
       data_File = dlmread(log_File,',');

       subplot(1,2,loop)   
           title(sprintf('Distance-Speed from route %s', route{1}));
           ylabel('Speed');
           xlabel('Distance');
           plot(data_File(:,1), data_File(:,2))
           hold on
           
        fprintf('Driver %s in Route %s:\n', driver{1}, route{1})
        fprintf('Mean speed: %d km/h (sd. %.2d)\n', mean(data_File(:,2)), std(data_File(:,2)))
        fprintf('Min and Max speed: [%.2d , %.2d]\n\n', min(data_File(:,2)), max(data_File(:,2)))
        
    end    
    
    loop = loop + 1; 
    
end

fprintf('Press any key to continue...')
pause
run('task3.m')