subplot(2,2,1);
filename = 'a1-height.csv';
route1 = dlmread(filename,',',1,0);
Distance = route1(:,4);
Elevation = route1(:,3);
plot(Distance,Elevation);
title ('Donosti-Gasteiz1(elevation)');

subplot(2,2,2);
filename2 = 'n1-height.csv';
route2 = dlmread(filename2,',',1,0);
Distance2 = route2(:,4);
Elevation2 = route2(:,3);
plot(Distance2,Elevation2);
title('Donosti-Gasteiz2(elevation)');

subplot(2,2,[3,4]);
plot(Distance,Elevation,Distance2,Elevation2);
title('Elevation Comparative')