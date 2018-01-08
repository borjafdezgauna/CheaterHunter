clear
clc

numSlices=input('Introduce numSlices')
Conductores=[1 2];
Carretera={'a1' 'n1'};
i=1;
j=1;


for i=1:length(Conductores)
  for j=1:length(Carreterda)
    A=sprintf('%s-driver%-log.csv', Carretera{j}, Conductores(i));
    B=sprintf('%s-speed-limit.csv', Carretera{j});
    driverLogKm=dlmread(A, ',', 0, 1);
    driverLogSpeeds=dlmread(A, ',', 0, 2);
    D=dlmread(B);
    limitKms=D(:,1);
    limitSpeeds=D(:,2);
    
    checkSpeedLimits(driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices);
    
    sprintf('\nAnalyzing: Driver = driver%d, Route= %s', Conductores(i), Carretera{j})
    fprintf('Mild infraction risk: Kms abover the speed limit= %.2d% (%.2d% of the route)', (kmsAboveSpeedLimit), (percentAboveSpeedLimit))
  end
end