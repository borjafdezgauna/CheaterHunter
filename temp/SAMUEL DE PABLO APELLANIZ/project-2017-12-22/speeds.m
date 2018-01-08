

task2=subplot(1,2,1);
speed1=dlmread('project-files/a1-driver1-log.csv',',');
speed2=dlmread('project-files/a1-driver2-log.csv',',');
plot(speed1(:,1),speed1(:,2),speed2(:,1), speed2(:,2));
xlabel('distance(m)');
ylabel('speed(km/h)');
title('route a1');


task2=subplot(1,2,2);
speed3=dlmread('project-files/n1-driver1-log.csv',',');
speed4=dlmread('project-files/n1-driver2-log.csv',',');
plot(speed3(:,1),speed3(:,2),speed4(:,1), speed4(:,2));
xlabel('distance(m)');
ylabel('speed(km/h)');
title('route n1');


saveas(task2,'route-speed.png');


averagedriver1n1=mean(speed3(:,2));
averagedriver2n1=mean(speed4(:,2));
averagedriver1a1=mean(speed1(:,2));
averagedriver2a1=mean(speed2(:,2));
sddriver1n1=std(speed3(:,2));
sddriver2n1=std(speed4(:,2));
sddriver1a1=std(speed1(:,2));
sddriver2a1=std(speed2(:,2));
maxdriver1n1=max(speed3(:,2));
mindriver1n1=min(speed3(:,2));
maxdriver2n1=max(speed4(:,2));
mindriver2n1=min(speed4(:,2));
maxdriver1a1=max(speed1(:,2));
mindriver1a1=min(speed1(:,2));
maxdriver2a1=max(speed2(:,2));
mindriver2a1=min(speed2(:,2));


sprintf('driver1 statistics in route n1:\n Mean speed: %.2f (sd:%.2f)\n Min-Max speed: [%.2f,%.2f]\n', averagedriver1n1, sddriver1n1, mindriver1n1, maxdriver1n1)
sprintf('driver2 statistics in route n1:\n Mean speed: %.2f (sd:%.2f)\n Min-Max speed: [%.2f,%.2f]\n', averagedriver2n1, sddriver2n1, mindriver2n1, maxdriver2n1)
sprintf('driver1 statistics in route a1:\n Mean speed: %.2f (sd:%.2f)\n Min-Max speed: [%.2f,%.2f]\n', averagedriver1a1, sddriver1a1, mindriver1a1, maxdriver1a1)
sprintf('driver2 statistics in route a1:\n Mean speed: %.2f (sd:%.2f)\n Min-Max speed: [%.2f,%.2f]\n', averagedriver2a1, sddriver2a1, mindriver2a1, maxdriver2a1)