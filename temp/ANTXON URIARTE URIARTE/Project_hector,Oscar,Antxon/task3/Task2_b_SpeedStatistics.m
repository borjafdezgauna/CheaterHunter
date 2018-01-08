%Read the files of speed
n1Driver1=dlmread('n1-driver1-log.csv',',');
n1Speed =n1Driver1(:,2);
disp('driver 1 statistics in N1')
% by using mean we calculate the mean speed
Mean_Speed_N1_1= mean(n1Speed);
StandarVariation=std(n1Speed);
fprintf('%.2f (sd.%.2f)\n',Mean_Speed_N1_1,StandarVariation)
% we calculate the Max and Min of the speed
Min_Max_Speed_N1_1=[min(n1Speed),max(n1Speed)]

%Read the files of speed
n1Driver2=dlmread('n1-driver2-log.csv',',');
n1Speed2=n1Driver2(:,2);
disp('driver 2 statistics in N1')
% by using mean we calculate the mean speed
Mean_Speed_N1_2= mean(n1Speed2);
StandarVariation1=std(n1Speed2);
fprintf('%.2f (sd.%.2f)\n',Mean_Speed_N1_2,StandarVariation1)
% we calculate the Max and Min of the speed
Min_Max_Speed_N1_2=[min(n1Speed2),max(n1Speed2)]

%Read the files of speed
a1Driver1=dlmread('a1-driver1-log.csv',',');
a1Speed=a1Driver1(:,2);
disp('driver 1 statistics in A1')
% by using mean we calculate the mean speed
Mean_Speed_A1_1= mean(a1Speed);
StandarVariation2=std(a1Speed);
fprintf('%.2f (sd.%.2f)\n',Mean_Speed_A1_1,StandarVariation2)
% we calculate the Max and Min of the speed
Min_Max_Speed_A1_1=[min(a1Speed),max(a1Speed)]

%Read the files of speed
a1Driver2=dlmread('a1-driver2-log.csv',',');
a1Speed2=a1Driver2(:,2);
disp('driver 2 statistics in A1')
% by using mean we calculate the mean speed
Mean_Speed_A1_2= mean(a1Speed2);
StandarVariation3=std(a1Speed2);
fprintf('%.2f (sd.%.2f)\n',Mean_Speed_A1_2,StandarVariation3)
% we calculate the Max and Min of the speed
Min_Max_Speed_A1_2=[min(a1Speed2),max(a1Speed2)]
