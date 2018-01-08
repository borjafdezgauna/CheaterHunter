B=dlmread('a1-driver1-log.csv',',',1,0);
A=dlmread('a1-driver2-log.csv',',',1,0);
C=dlmread('n1-driver1-log.csv',',',1,0);
D=dlmread('n1-driver2-log.csv',',',1,0);
subplot(2,2,1);
xn1=B(:,1);
yn1=B(:,2);
plot(xn1,yn1);
xlabel('Km')
ylabel('Kmh')
title('Subplot 1: A1 1 gidaria') 
subplot(2,2,2)
xn2=A(:,1);
yn2=A(:,2);
plot(xn2,yn2);
xlabel('Km')
ylabel('KmH')
title('Subplot 2: A1 2.gidaria')
subplot(2,2,3);
xn3=C(:,1);
yn3=C(:,2);
plot(xn3,yn3);
xlabel('km')
ylabel('kmh')
title('Subplot 3: N1 1.gidaria') 
subplot(2,2,4)
xn4=D(:,1);
yn4=D(:,2);
plot(xn4,yn4);
xlabel('KM')
ylabel('kmh')
title('Subplot 4: N1 2gidaria')
saveas(gcf,'route-speed.png')