A1_1=dlmread('a1-driver1-log.csv',',');
kms= A1_1(:,1);
speedKmH= A1_1(:,2);

numSlices=length(kms);

 A1_1Time=estimateTime(kms,speedKmH,numSlices);
 A1_1HMS= toHMS(A1_1Time);


A1_2= dlmread('a1-driver2-log.csv',',');
kms1= A1_2(:,1);
speedKmH1= A1_2(:,2);

numSlices1=length(kms1);

 A1_2Time=estimateTime(kms1,speedKmH1,numSlices1);
 A1_2HMS= toHMS(A1_2Time);

N1_1=dlmread('n1-driver1-log.csv',',');
kms2= N1_1(:,1);
speedKmH2= N1_1(:,2);

numSlices2=length(kms2);

 N1_1Time=estimateTime(kms2,speedKmH2,numSlices2);
N1_1HMS=toHMS(N1_1Time);

N1_2=dlmread('n1-driver2-log.csv',',');
kms3= N1_2(:,1);
speedKmH3= N1_2(:,2);

numSlices3=length(kms3);

 N1_2Time=estimateTime(kms3,speedKmH3,numSlices3);
N1_2HMS=toHMS(N1_2Time);

fprintf('Estimated time for driver1 in route n1: %s\n',N1_1HMS)
fprintf('Estimated time for driver2 in route n1: %s\n',N1_2HMS)
fprintf('Estimated time for driver1 in route a1: %s\n',A1_1HMS)
fprintf('Estimated time for driver2 in route a1: %s\n',A1_2HMS)

