%ataza honetan bideen elebazioa ploteatuko dugu eta haien media eta desbideratze 
%tipicoa kalkulatu.


%bide nazionala

n1 = dlmread('n1-height.csv',',',1,0);
plot(n1(:,4),n1(:,3),"b")
xlabel('distantzia(km)')
ylabel('altuera(m)')
title('Bideen Elebazioa')

%autopista

hold on
a1 = dlmread('a1-height.csv',',',1,0);
plot(a1(:,4),a1(:,3),"r")
hold off
legend('autopista','nazionala');

%media,desbideratzea eta min-max(nazionalean)
a = n1(:,3);
meanheight = mean(a);
sd = std(a);
z = max(a);
m = min(a);


fprintf('n1 route statistics:\n')
heightmedia(meanheight, sd)
heightrange(m, z)


%media, desbideratzea eta min-max(autopista)
b = a1(:,3);
meanheight = mean(b);
sd = std(b);
z = max(b);
m = min(b);

fprintf('a1 route statistics:\n')
heightmedia(meanheight, sd)
heightrange(m, z)
%gorde plota irudia bezala
saveas(gcf,'ataza1.png');


