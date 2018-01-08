filename2 = 'n1-height.csv';
Come = dlmread(filename2,',',1,0);
Distance2 = Come(:,4);
Elevation2 = Come(:,3);
plot(Distance2,Elevation2)