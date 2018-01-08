%1.1.
fileheightsn1= dlmread('n1-height.csv',',',1,0);
x1= fileheightsn1 (:,4)
y1= fileheightsn1 (:,3)
plot(x1,y1)
fileheightsa1= dlmread('a1-height.csv',',',1,0);
x2= fileheightsa1 (:,4)
y2= fileheightsa1 (:,3)
plot(x2,y2)
plot(x1,y1,x2,y2)
fileheightsn1= dlmread('n1-height.csv',',',1,0);
x3= fileheightsn1 (:,2)
y3= fileheightsn1 (:,1)
plot(x3,y3)
fileheightsa1= dlmread('a1-height.csv',',',1,0);
x4= fileheightsa1 (:,2)
y4= fileheightsa1 (:,1)
plot(x4,y4)
plot(x3,y3,x4,y4)
