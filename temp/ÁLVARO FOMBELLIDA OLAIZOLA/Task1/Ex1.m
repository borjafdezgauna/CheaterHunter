a1= dlmread('files/a1-height.csv',',',1,0);
n1= dlmread('files/n1-height.csv',',',1,0);

a11= a1(:,1);
n11= n1(:,1);
a12= a1(:,2);
n12= n1(:,2);
a14= a1(:,4);
n14= n1(:,4);
a13= a1(:,3);
n13= n1(:,3);

mhn= (sum(n11')/length(n11'));
sdn= std(n11);
hrn1= min(n11);
hrn2= max(n11);

mha= (sum(a11')/length(a11'));
sda= std(a11);
hra1= min(a11);
hra2= max(a11);

figure
subplot(1,2,1)       
plot(a12,a11,n12,n11)
title('Heights')
xlabel('Distance from origin (km)')
ylabel('Height of the route (m)')

subplot(1,2,2)       
plot(a14,a13,n14,n13)       
title('Routes')
xlabel('Latitude')
ylabel('Longitude')

saveas(gcf,'routes-elevations','png')

fprintf('n1 route statistics: \n Mean height: %d (sd: %d) \n Height range: [%d, %d] \n',mhn,sdn,hrn1,hrn2);
fprintf('a1 route statistics: \n Mean height: %d (sd: %d) \n Height range: [%d, %d] \n',mha,sda,hra1,hra2);
