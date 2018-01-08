subplot(2,1,1);
Filename1 = 'a1-height.csv';
Route1 = dlmread(Filename1,',',1,0);
Longitude1 = Route1(:,2);
Latitude1 = Route1(:,1);


subplot(2,1,2);
Filename2 = 'n1-height.csv';
Route2 = dlmread(Filename2,',',1,0);
Longitude2 = Route2(:,2);
Latitude2 = Route2(:,1);


subplot(2,2,[2,3]);
plot(Longitude1,Latitude1,Longitude2,Latitude2,'b')