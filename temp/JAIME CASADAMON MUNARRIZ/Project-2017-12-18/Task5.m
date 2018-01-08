%Task5
%read the data
datos = dlmread('a1-driver1-log.csv',',');
limites = dlmread('a1-speed-limit.csv',';');
[d1, d2] = checkSpeedLimits( datos(:,1) , datos(:,2) , limites(:,1) , limites(:,2) , 1000 ); 
fprintf('\nAnalyzing: Driver= driver1, Route= a1\n');
 
if ( d2 == 0 )
    fprintf('No risk of infraction\n');
elseif ( d2 > 0.10 )
    fprintf('HIGH INFRACTION RISK');
    fprint('\n Kms abover the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
else
    fprintf('Mild infraction risk');
    fprint(' Kms abover the speed limit= %.2f (%.2f%% of the route)\n' , d1 , d2*100);
end    
