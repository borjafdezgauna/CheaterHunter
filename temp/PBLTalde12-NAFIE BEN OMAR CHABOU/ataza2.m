%ataza honetan gidari bien abiaduran ploteatuko ditugo bi grafikan 
%bat nazionaletik gidatzen dutenean eta bestea autopistatik
ax1 = subplot(2,1,1);
x = linspace(0,185);
a11 = dlmread('a1-driver1-log.csv',',');
plot(a11(:,1),a11(:,2),"r")
title('autopista');
ylabel('km/h');
xlabel('km');


hold on
a12 = dlmread('a1-driver2-log.csv',',');
plot(a12(:,1),a12(:,2),"b")
hold off
legend('driver1','driver2');

ax2 = subplot(2,1,2);
n11 = dlmread('n1-driver1-log.csv',',');
plot(n11(:,1),n11(:,2),"r")
title('nazionala');
ylabel('km/h');
xlabel('km');

hold on
n12 = dlmread('n1-driver2-log.csv',',');
plot(n12(:,1),n12(:,2),"b")
hold off
legend('driver1','driver2');


%ruta n11

c = n11(:,2);
meanspeed = mean(c);
sd = std(c);
z = max(c);
m = min(c);

fprintf('driver1 statistics in route n1:\n')
speedmedia(meanspeed, sd)
minmaxspeed(m, z)

%ruta n12

d = n12(:,2);
meanspeed = mean(d);
sd = std(d);
z = max(d);
m = min(d);


fprintf('driver2 statistics in route n1:\n')
speedmedia(meanspeed, sd)
minmaxspeed(m, z)

%ruta a11

a = a11(:,2);
meanspeed = mean(a);
sd = std(a);
z = max(a);
m = min(a);

fprintf('driver1 statistics in route a1:\n')
speedmedia(meanspeed, sd)
minmaxspeed(m, z)

%ruta a12

b = a12(:,2);
meanspeed = mean(b);
sd = std(b);
z = max(b);
m = min(b);

fprintf('driver2 statistics in route a1:\n')
speedmedia(meanspeed, sd)
minmaxspeed(m, z)




