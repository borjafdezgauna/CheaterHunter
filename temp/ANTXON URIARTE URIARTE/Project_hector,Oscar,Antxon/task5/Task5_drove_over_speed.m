%Firstly we calculate the limits speeds and the distance of each driver Logs
N1_speedLimit= dlmread('n1-speed-limit.csv',';');
LimitkilometersN1=N1_speedLimit(:,1);
LimitSpeedsN1=N1_speedLimit(:,2);

A1_speedLimit= dlmread('a1-speed-limit.csv',';');
limitkilometersA1=A1_speedLimit(:,1);
LimitSpeedsA1=A1_speedLimit(:,2);

A1_1=dlmread('a1-driver1-log.csv',',');
DriverLogkm= A1_1(:,1);
DriverLogspeed= A1_1(:,2);
m=toMeters(DriverLogkm);

numSlices=length(DriverLogkm);
A1_1Results= checkSpeedLimits(DriverLogkm,DriverLogspeed,limitkilometersA1,LimitSpeedsA1,numSlices);
A1_1Percentage= A1_1Results*100*1000/m(end);
%By using if, we differ the differents results that we can print with the
%results given of its driver and road
if A1_1Percentage>0 && A1_1Percentage<10
disp('Analyzing: Driver= driver1, Route= a1')
fprintf('Mild infraction risk: Kms above the speed limit= %2.2f(%2.2f%s of the route)\n',A1_1Results,A1_1Percentage,'%')
elseif A1_1Percentage>10
 disp('Analyzing: Driver= driver1, Route= a1')
 fprintf('HIGH INFRACTION RISK: Kms above the speed limit= %2.2f(%2.2f%s of the route)\n',A1_1Results,A1_1Percentage,'%')
elseif A1_1Percentage==0
    disp('Analyzing: Driver= driver1, Route= a1')
    disp('No risk of infraction')
end

A1_2= dlmread('a1-driver2-log.csv',',');
DriverLogkm1= A1_2(:,1);
DriverLogspeed1= A1_2(:,2);
m3=toMeters(DriverLogkm1);

numSlices1=length(DriverLogkm1);
A1_2Results=checkSpeedLimits(DriverLogkm1,DriverLogspeed1,limitkilometersA1,LimitSpeedsA1,numSlices1);
A1_2Percentage= A1_2Results*100*1000/m3(end);
if A1_2Percentage>0 && A1_2Percentage<10
disp('Analyzing: Driver= driver1, Route= a1')
fprintf('Mild infraction risk: Kms above the speed limit= %2.2f(%2.2f%s of the route)\n',A1_2Results,A1_2Percentage,'%')
elseif A1_2Percentage>10
 disp('Analyzing: Driver= driver1, Route= a1')
 fprintf('HIGH INFRACTION RISK: Kms above the speed limit= %2.2f(%2.2f%s of the route)\n',A1_2Results,A1_2Percentage,'%')
elseif A1_2Percentage==0
    disp('Analyzing: Driver= driver1, Route= a1')
    disp('No risk of infraction')
end
N1_1=dlmread('n1-driver1-log.csv',',');
DriverLogkm2= N1_1(:,1);
DriverLogspeed2= N1_1(:,2);
m1=toMeters(DriverLogkm2);

numSlices2=length(DriverLogkm2);
N1_1Results=checkSpeedLimits(DriverLogkm2,DriverLogspeed2,LimitkilometersN1,LimitSpeedsN1,numSlices2);
N1_1Percentage= N1_1Results*100*1000/m1(end);
if N1_1Percentage>0 && N1_1Percentage<10
disp('Analyzing: Driver= driver1, Route= a1')
fprintf('Mild infraction risk: Kms above the speed limit= %2.2f(%2.2f%s of the route)\n',N1_1Results,N1_1Percentage,'%')
elseif N1_1Percentage>10
 disp('Analyzing: Driver= driver1, Route= a1')
 fprintf('HIGH INFRACTION RISK: Kms above the speed limit= %2.2f(%2.2f%s of the route)\n',N1_1Results,N1_1Percentage,'%')
elseif N1_1Percentage==0
    disp('Analyzing: Driver= driver1, Route= a1')
    disp('No risk of infraction')
end
N1_2=dlmread('n1-driver2-log.csv',',');
DriverLogkm3= N1_2(:,1);
DriverLogspeed3= N1_2(:,2);
m2=toMeters(DriverLogkm3);
 
numSlices3=length(DriverLogkm3);
N1_2Results=checkSpeedLimits(DriverLogkm3,DriverLogspeed3,LimitkilometersN1,LimitSpeedsN1,numSlices3);
N1_2Percentage= N1_2Results*100*1000/m2(end);

if  N1_2Percentage>0 && N1_2Percentage<10
disp('Analyzing: Driver= driver1, Route= a1')
fprintf('Mild infraction risk: Kms above the speed limit= %.2f(%.2f%s of the route)\n',N1_2Results,N1_2Percentage,'%')
elseif N1_2Percentage>10
 disp('Analyzing: Driver= driver1, Route= a1')
 fprintf('HIGH INFRACTION RISK: Kms above the speed limit= %.2f(%.2f%s of the route)\n',N1_2Results,N1_2Percentage,'%')
elseif N1_2Percentage==0
    disp('Analyzing: Driver= driver1, Route= a1')
    disp('No risk of infraction')
end






