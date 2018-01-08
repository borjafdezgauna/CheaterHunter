%Read again the files distance and elevation
n1heights=dlmread('n1-height.csv',',',1,0);
n1distance= n1heights(:,4);
n1elevation= n1heights(:,3);
disp('n1 route statistics');
% by using mean we calculate the mean height and standard deviation
Mean_Height= mean(n1elevation);
StandarDeviationN1=std(n1elevation);
fprintf('%.2f (sd:%.2f)\n',Mean_Height,StandarDeviationN1)
% we calculate the Max and Min of the height
Height_Range=[max(n1elevation),min(n1elevation)]

%Rea the files a1Distance and a1elevation
a1heights= dlmread('a1-height.csv',',',1,0);
a1distance=a1heights(:,4);
a1elevation= a1heights(:,3);
disp('a1 route statistics');
% by using mean we calculate the mean height and standard deviation
Mean_Height2= mean(a1elevation);
StandardeviationA1= std(a1elevation);
fprintf('%.2f (sd:%.2f)\n',Mean_Height2,StandardeviationA1)
% we calculate the Max and Min of the height
Height_Range=[max(a1elevation),min(a1elevation)]

