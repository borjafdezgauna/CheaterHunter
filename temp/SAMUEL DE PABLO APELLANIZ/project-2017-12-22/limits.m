speedlimita1=dlmread('project-files/a1-speed-limit.csv');
speedlimitn1=dlmread('project-files/n1-speed-limit.csv');
 a1driver1=dlmread('project-files/a1-driver1-log.csv',',');
 a1driver2=dlmread('project-files/a1-driver2-log.csv',',');
 n1driver1=dlmread('project-files/n1-driver1-log.csv',',');
 n1driver2=dlmread('project-files/n1-driver2-log.csv',',');
 a=checkSpeedLimits( a1driver1(:,1), a1driver1(:,2), speedlimita1(:,1), speedlimita1(:,2), 10000) 