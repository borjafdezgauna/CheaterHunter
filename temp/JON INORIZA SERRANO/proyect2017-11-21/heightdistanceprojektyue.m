filename = 'a1-height.csv';
Go = dlmread(filename,',',1,0);
Distance = Go(:,4);
Elevation = Go(:,3);
plot(Distance,Elevation)