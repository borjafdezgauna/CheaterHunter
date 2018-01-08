SpeedLimita1=dlmread('a1-speed-limit.csv',';'); 
SpeedLimitn1=dlmread('n1-speed-limit.csv',';') ;
%With this we can load the files and save them in diferent matrices. 
for num=1:2
    filename1=sprintf('a1-driver%d-log.csv',num); 
    %we give the accurate name so we can load the file we want
    routea1=dlmread(filename1,','); 
    distancea1=routea1(:,1);
    speeda1=routea1(:,2);
    %we separate the matrix we took into vectors.
    [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( distancea1, speeda1, SpeedLimita1(:,1), SpeedLimita1(:,2), 10000);
    %We use this function so we can know the exact kmsAboveSpeedLimit and percentAboveSpeedLimit.
   if percentAboveSpeedLimit>10
     fprintf('Analysing: Driver= driver%d, Route= a1\nHIGH INFRACTION RISK: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n',num,kmsAboveSpeedLimit,percentAboveSpeedLimit)  
   elseif percentAboveSpeedLimit<=10 && percentAboveSpeedLimit>0
    fprintf('Analysing: Driver= driver%d, Route= a1\nMild infraction risk: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n',num,kmsAboveSpeedLimit,percentAboveSpeedLimit)
   else
     fprintf('Analysing: Driver= driver%d, Route= a1\nNo risk of infraction\n\n',num)   
   end
   %We use the IF because depending on the percentage it will appear on message
   %or another one.
end
for num=1:2
    filename2=sprintf('n1-driver%d-log.csv',num);
    routen1=dlmread(filename2,',');
    distancen1=routen1(:,1);
    speedn1=routen1(:,2);
    [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( distancen1, speedn1, SpeedLimitn1(:,1), SpeedLimitn1(:,2), 10000);
 if percentAboveSpeedLimit>10
     fprintf('Analysing: Driver= driver%d, Route= n1\nHIGH INFRACTION RISK: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n',num,kmsAboveSpeedLimit,percentAboveSpeedLimit)  
   elseif percentAboveSpeedLimit<=10 && percentAboveSpeedLimit>0
    fprintf('Analysing: Driver= driver%d, Route= n1\nMild infraction risk: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n',num,kmsAboveSpeedLimit,percentAboveSpeedLimit)
 else 
     fprintf('Analysing: Driver= driver%d, Route= n1\nNo risk of infraction\n\n',num)   
   end
end
%The process will be reppeated changin the A fo the N.
