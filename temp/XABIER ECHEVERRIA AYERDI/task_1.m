 %modificado 20/11/2017
clear
a1_route=dlmread('a1-height.csv',',',1,0);
n1_route=dlmread('n1-height.csv',',',1,0);
 
s1=subplot(2,1,1);
plot(a1_route(:,4),a1_route(:,3))

hold on
s2=subplot(2,1,1);
plot(n1_route(:,4),n1_route(:,3))
title('Height ')
xlabel('Distance(Km)')
ylabel('Height(m)')
legend('Highspeed','National','Location','northwest')

s3=subplot(2,1,2);
plot(a1_route(:,2),a1_route(:,1))

hold on
subplot(2,1,2);
s4=plot(n1_route(:,2),n1_route(:,1));
title('Routes ')
xlabel('Longitude')
ylabel('Latitude')
legend('Highspeed','National','Location','northwest')

saveas(s4,'route-elevations','png')

%statistics

average_height_a1=sum(a1_route(:,3))/length(a1_route(:,3));
average_height_n1=sum(n1_route(:,3))/length(n1_route(:,3));
deviation_a1=std(a1_route(:,3));
deviation_n1=std(n1_route(:,3));
min_a1=min(a1_route(:,3));
max_a1=max(a1_route(:,3));
min_n1=min(n1_route(:,3));
max_n1=max(n1_route(:,3));

%show data

fprintf('N1 route statistics \n Mean height:%.2f (sd: %.2f) \n Height range:[%f , %f] \n \n', average_height_n1,deviation_n1,min_n1,max_n1)
fprintf('A1 route statistics \n Mean height:%.2f (sd: %.2f) \n Height range:[%f , %f] \n \n', average_height_a1,deviation_a1,min_a1,max_a1)

