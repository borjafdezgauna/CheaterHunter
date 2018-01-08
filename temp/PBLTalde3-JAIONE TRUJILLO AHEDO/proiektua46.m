B=dlmread('a1-driver1-log.csv',',',1,0);
A=dlmread('a1-driver2-log.csv',',',1,0);
C=dlmread('n1-driver1-log.csv',',',1,0);
D=dlmread('n1-driver2-log.csv',',',1,0);
kmsA11=B(:,1);
kmsA12=A(:,1);
kmsN11=C(:,1);
kmsN12=D(:,1);
speedA11=B(:,2);
speedA12=A(:,2);
speedN11=C(:,2);
speedN12=D(:,2);
%A1 1.gidaria
estimatedTimeA11=estimateTime(kmsA11,speedA11,10000);
A11=toHMS(estimatedTimeA11);
fprintf('Estimated time for driver1 in route A1:  %s',A11);
%A1 2.gidaria
estimatedTimeA12=estimateTime(kmsA12,speedA12,10000);
A12=toHMS(estimatedTimeA12);
fprintf('\nEstimated time for driver2 in route A1:  %s',A12);
%N1 1.gidaria
estimatedTimeN11=estimateTime(kmsN11,speedN11,10000);
N11=toHMS(estimatedTimeN11);
fprintf('\nEstimated time for driver1 in route N1:  %s',N11);
%N1 2.gidaria
estimatedTimeN12=estimateTime(kmsN12,speedN12,10000);
N12=toHMS(estimatedTimeN12);
fprintf('\nEstimated time for driver2 in route N1:  %s',N12);
