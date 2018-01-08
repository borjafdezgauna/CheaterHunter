%fitxategiaren barruan dauden datuak matrize moduan gordeta daude eta lehenengo
%errenkada baztertu egin behar dugunez matrize bati fitxategiaren informazioa   
%egokitzen diogu lehenengo zutabea kenduz eta horrekin gero subplotak egiten ditugu
B=dlmread('a1-height.csv',',',1,0);
A=dlmread('n1-height.csv',',',1,0);
subplot(2,2,1);
xn1=A(:,4);
yn1=A(:,3);
plot(xn1,yn1);
xlabel('Km')
ylabel('m')
title('Subplot 1: N1 gidaria') 
subplot(2,2,2)
xn2=B(:,4);
yn2=B(:,3);
plot(xn2,yn2);
xlabel('Km')
ylabel('m')
title('Subplot 2: A1 gidaria')
subplot(2,2,3);
xn3=A(:,2);
yn3=A(:,1);
plot(xn3,yn3);
xlabel('longitude')
ylabel('latitude')
title('Subplot 3: N1 gidaria') 
subplot(2,2,4)
xn4=B(:,2);
yn4=B(:,1);
plot(xn4,yn4);
xlabel('longitude')
ylabel('latitude')
title('Subplot 4: A1 gidaria')
saveas(gcf,'route-elevations.png')