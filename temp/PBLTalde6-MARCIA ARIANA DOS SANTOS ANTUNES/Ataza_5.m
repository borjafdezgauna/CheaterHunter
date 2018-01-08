for number=1:2;
  for route={'n1','a1'};
    %% Fitxategiaren izena aldagaia batean gorde eta irakurri
    filename=sprintf('%s-driver%d-log.csv',route{1},number); 
    limitfile=sprintf('%s-speed-limit.csv',route{1});
    log=dlmread(filename,',');
    limit=dlmread(limitfile,';');
    %% CheckSpeedLimits funtzia erabiliko dugu, abiaduraren limitea kalkulatzeko
 [kmsAboveSpeedLimit,percentAboveSpeedLimit]=checkSpeedLimits(log(:,1), log(:,2), limit(:,1),limit(:,2), 10000);
%% Hurrengo baldintzetan oinarrituz izun bat jartzeko joera bat edo beste bat izango dugu
 if percentAboveSpeedLimit>10
  fprintf('Analyzing: Driver= driver%d, Route= %s\nHIGH INFRACTION RISK: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n',number,route{1},kmsAboveSpeedLimit,percentAboveSpeedLimit);
 elseif percentAboveSpeedLimit<10 && percentAboveSpeedLimit~=0
   fprintf('Analyzing: Driver= driver%d, Route= %s\nMild infraction risk: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n',number,route{1},kmsAboveSpeedLimit,percentAboveSpeedLimit);
 else
  fprintf('Analyzing: Driver= driver%d, Route= %s\nNo risk of infraction\n\n',number,route{1});
 end
 end
 end
 input('Sakatu edozein tekla jarraitzeko: ','s');