clear all
clc

%datos del conductor 1 en la ruta A1
a1conductor1=dlmread('a1-driver1-log.csv',',',1,0); 
d1a1=a1conductor1(:,1);
v1a1=a1conductor1(:,2);
s1a1=length(d1a1)-1;
r1a1=estimateTime(d1a1,v1a1,s1a1);
t1a1=toHMS(r1a1);

%datos del conductor 2 en la ruta A1
a1conductor2=dlmread('a1-driver2-log.csv',',',1,0); 
d2a1=a1conductor2(:,1);
v2a1=a1conductor2(:,2);
s2a1=length(d2a1)-1;
r2a1=estimateTime(d2a1,v2a1,s2a1);
t2a1=toHMS(r2a1);

%datos del conductor 1 en la ruta N1
n1conductor1=dlmread('n1-driver1-log.csv',',',1,0);
d1n1=n1conductor1(:,1);
v1n1=n1conductor1(:,2);
s1n1=length(d1n1);
r1n1=estimateTime(d1n1,v1n1,s1n1);
t1n1=toHMS(r1n1);

%datos del conductor 2 en la ruta N1
n1conductor2=dlmread('n1-driver2-log.csv',',',1,0);
d2n1=n1conductor2(:,1);
v2n1=n1conductor2(:,2);
s2n1=length(d2n1);
r2n1=estimateTime(d2n1,v2n1,s2n1);
t2n1=toHMS(r2n1);

fprintf('Estimated time for driver 1 in route n1: %s',t1n1);
fprintf('\nEstimated time for driver 2 in route n1: %s',t2n1);
fprintf('\nEstimated time for driver 1 in route a1: %s',t1a1);
fprintf('\nEstimated time for driver 2 in route a1: %s \n',t2a1);