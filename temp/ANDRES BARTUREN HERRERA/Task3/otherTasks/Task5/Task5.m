data = dlmread('files/n1-driver1-log.csv',',');
limits = dlmread('files/n1-speed-limit.csv',';');

[d1, d2] = checkSpeedLimits( data(:,1) , data(:,2) , limits(:,1) , limits(:,2) , 1000 );

fprintf('\nAnalyzing: Driver= driver1, Route= n1\n');

if ( d2 == 0 )
    fprintf('No risk of infraction\n');
elseif ( d2 > 0.10 )
    fprintf('HIGH INFRACTION RISK: ');
    fprintf('Kms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
else
    fprintf('Mild infraction risk: ');
    fprintf('Kms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
end




data = dlmread('files/n1-driver2-log.csv',',');

[d1, d2] = checkSpeedLimits( data(:,1) , data(:,2) , limits(:,1) , limits(:,2) , 1000 );

fprintf('\nAnalyzing: Driver= driver2, Route= n1\n');

if ( d2 == 0 )
    fprintf('No risk of infraction\n');
elseif ( d2 > 0.10 )
    fprintf('HIGH INFRACTION RISK: ');
    fprintf('Kms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
else
    fprintf('Mild infraction risk: ');
    fprintf('Kms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
end





data = dlmread('files/a1-driver1-log.csv',',');
limits = dlmread('files/a1-speed-limit.csv',';');

[d1, d2] = checkSpeedLimits( data(:,1) , data(:,2) , limits(:,1) , limits(:,2) , 1000 );

fprintf('\nAnalyzing: Driver= driver1, Route= a1\n');

if ( d2 == 0 )
    fprintf('No risk of infraction\n');
elseif ( d2 > 0.10 )
    fprintf('HIGH INFRACTION RISK: ');
    fprint('\nKms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
else
    fprintf('Mild infraction risk: ');
    fprint('Kms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
end    





data = dlmread('files/a1-driver2-log.csv',',');

[d1, d2] = checkSpeedLimits( data(:,1) , data(:,2) , limits(:,1) , limits(:,2) , 1000 );

fprintf('\nAnalyzing: Driver= driver2, Route= a1\n');

if ( d2 == 0 )
    fprintf('No risk of infraction\n');
elseif ( d2 > 0.10 )
    fprintf('HIGH INFRACTION RISK: ');
    fprintf('Kms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
else
    fprintf('Mild infraction risk: ');
    fprintf('Kms above the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
end


disp('Press any key to continue...')
pause;

