

task1=subplot(1,2,1);
heights1=dlmread('project-files/a1-height.csv',',',1,0);
heights2=dlmread('project-files/n1-height.csv',',',1,0);
plot(heights1(:,4),heights1(:,3),heights2(:,4), heights2(:,3));
xlabel('distance(m)');
ylabel('height(m)');
title('heights');
task1=subplot(1,2,2);
plot(heights1(:,2),heights1(:,1),heights2(:,2), heights2(:,1));
xlabel('longitude');
ylabel('latitude(º)');
title('routes');

saveas(task1,'route-elevations.png');

averagen1=mean(heights2(:,3));
averagea1=mean(heights1(:,3));
sdn1=std(heights2(:,3));
sda1=std(heights1(:,3));
maxn1=max(heights2(:,3));
minn1=min(heights2(:,3));
maxa1=max(heights1(:,3));
mina1=min(heights1(:,3));
sprintf('n1 route statistics:\n Mean height: %.2f (sd:%.2f)\n Height range: [%.2f,%.2f]\n', averagen1, sdn1, minn1, maxn1)
sprintf('a1 route statistics:\n Mean height: %.2f (sd:%.2f)\n Height range: [%.2f,%.2f]\n', averagea1, sda1, mina1, maxa1)