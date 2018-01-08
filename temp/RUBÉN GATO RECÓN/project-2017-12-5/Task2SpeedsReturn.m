Firstdriver1 = 'n1-driver1-log.csv';
Firstdriversreturn= dlmread(Firstdriver1,',',1,0);
Distance3 = Firstdriversreturn(:,2);
Speed3= Firstdriversreturn(:,1);

Secondriver1 = 'n1-driver2-log.csv';
Secondriverswreturn = dlmread(Secondriver1,',',1,0);
Distance4 = Secondriverswreturn(:,2);
Speed4 = Secondriverswreturn(:,1);

subplot(2,2,[2,3]);
plot(Speed3,Distance3,Speed4, Distance4)