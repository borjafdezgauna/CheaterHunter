x=dlmread('n1-driver1-log.csv',',');
y=dlmread('n1-driver2-log.csv',',');
w=dlmread('a1-driver1-log.csv',',');
z=dlmread('a1-driver2-log.csv',',');
subplot(1,2,1);
hold on
plot(x(:,1),x(:,2));
plot(y(:,1),y(:,2)),xlabel('Distance from the origin(km)'),ylabel('Speed(km/h)'),title('National road');
subplot(1,2,2);
hold on
plot(w(:,1),w(:,2));
plot(z(:,1),z(:,2)),xlabel('Distance from the origin(km)'),ylabel('Speed(km/h)'),title('Highway');
legend('Driver 1','Driver 2')

A=(x(:,2));
meanspeed= mean(A);
minspeed= min(A);
maxspeed= max(A);
standardeviation= std(A);
fprintf('Driver1 statistics in route n1\n Mean speed: %.2f (sd: %.2f)',meanspeed,standardeviation);
fprintf('\n Min-Max: [%.2f, %.2f]',minspeed,maxspeed)

B=(y(:,2));
meanspeed= mean(B);
minspeed= min(B);
maxspeed= max(B);
standardeviation= std(B);
fprintf('\n\n Driver2 statistics in route n1\n Mean speed: %.2f (sd: %.2f)',meanspeed,standardeviation);
fprintf('\n Min-Max: [%.2f, %.2f]',minspeed,maxspeed)

C=(w(:,2));
meanspeed= mean(C);
minspeed= min(C);
maxspeed= max(C);
standardeviation= std(C);
fprintf('\n\n Driver1 statistics in route a1\n Mean speed: %.2f (sd: %.2f)',meanspeed,standardeviation);
fprintf('\n Min-Max: [%.2f, %.2f]',minspeed,maxspeed)

D=(z(:,2));
meanspeed= mean(D);
minspeed= min(D);
maxspeed= max(D);
standardeviation= std(D);
fprintf('\n\n Driver2 statistics in route a1\n Mean speed: %.2f (sd: %.2f)',meanspeed,standardeviation);
fprintf('\n Min-Max: [%.2f, %.2f]',minspeed,maxspeed)



