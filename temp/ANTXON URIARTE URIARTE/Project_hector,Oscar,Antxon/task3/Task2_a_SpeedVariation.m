%N1-Driver 1 Speed-Distance read the files
n1Driver1=dlmread('n1-driver1-log.csv',',');
n1Speed =n1Driver1(:,2);
n1Distance =n1Driver1(:,1);

%N1-Driver 2 Speed-Distance read the files
n1Driver2=dlmread('n1-driver2-log.csv',',');
n1Speed2=n1Driver2(:,2);
n1Distance2=n1Driver2(:,1);

%A1-Driver 1 Speed-Distance read the files
a1Driver1=dlmread('a1-driver1-log.csv',',');
a1Speed=a1Driver1(:,2);
a1Distance=a1Driver1(:,1);

%A1-Driver 2 Speed-Distance read the files
a1Driver2=dlmread('a1-driver2-log.csv',',');
a1Speed2=a1Driver2(:,2);
a1Distance2=a1Driver2(:,1);

%Plot the files that we have read
subplot(2,2,[1 2])
plot(n1Distance,n1Speed,n1Distance2,n1Speed2)
xlabel('distance(km)')
ylabel('speed(km/h)')
title('Speed/distance N1')
legend('Driver 1','Driver 2')

subplot(2,2,[3 4])
plot(a1Distance,a1Speed,a1Distance2,a1Speed2)
xlabel('distance(km)')
ylabel('speed(km/h)')
title('Speed/distance A1')
legend('Driver 1','Driver 2')


