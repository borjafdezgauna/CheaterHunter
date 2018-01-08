
filedriver1n1= dlmread('n1-driver1-log.csv',',')
x21= filedriver1n1(:,1);
y21= filedriver1n1(:,2);
x22= filedriver1a1(:,1);
y22= filedriver1a1(:,2);
plot(x21,y21,x22,y22)
filedriver2n1= dlmread('n1-driver2-log.csv',',')
x23= filedriver2n1(:,1);
y23= filedriver2n1(:,2);
x24= filedriver2a1(:,1);
y24= filedriver2a1(:,2);
plot(x23,y23,x24,y24)


filedriver1a1= dlmread('a1-driver1-log.csv',',')
filedriver2a1= dlmread('a1-driver2-log.csv',',')