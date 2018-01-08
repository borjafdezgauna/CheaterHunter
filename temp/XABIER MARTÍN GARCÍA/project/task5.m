%We created a loop that runs four times to get all combinations of routes
%and drivers. Then we stored speed limits and driver's positions in
%different vectors. We are not certain why it outputs 3 high infraction
%risks. Think it's the log files, but we cannot be sure, however, the
%script and functions seem to work properly with the examples of the pdf.

index = 0;
log_File = [];


for route = {'a1','n1'}
        for driver = {'1','2'}
           index = index + 1;
           
           speed_Limits_File = sprintf('Data/%s-speed-limit.csv',route{1});
           driver_Log_File = sprintf('Data/%s-driver%s-log.csv', route{1}, driver{1});
           
           speed_Limits_Data = dlmread(speed_Limits_File,';');
           driver_Data = dlmread(driver_Log_File,',',1,0);
                      
           [total_Illegal_Kms, illegal_Percentage_Kms] = checkSpeedLimits(driver_Data(:,1), driver_Data(:,2), speed_Limits_Data(:,1), speed_Limits_Data(:,2) , 10000);
           
           if illegal_Percentage_Kms >= 10
               fprintf('\n Analyzing: Driver%s, Route = %s \n HIGH INFRACTION RISK: Kms above the seped limit = %.2f (%.2f %% of the route) \n', driver{1}, route{1}, total_Illegal_Kms, illegal_Percentage_Kms)
           elseif illegal_Percentage_Kms == 0
               fprintf('\n Analyzing: Driver%s, Route = %s \n No risk of infraction \n', driver{1}, route{1})
           elseif illegal_Percentage_Kms < 10
               fprintf('\n Analyzing: Driver%s, Route = %s \n Mild infraction Risk: Kms above the seped limit = %.2f (%.2f %% of the route) \n', driver{1}, route{1}, total_Illegal_Kms, illegal_Percentage_Kms)
           end
        end
end

fprintf('Press any key to continue...')
pause
run('task3.m')
