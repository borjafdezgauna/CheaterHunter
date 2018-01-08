Firstdriver = 'a1-driver1-log.csv';
Firstdriversgoing = dlmread(Firstdriver,',',1,0);
Distance1 = Firstdriversgoing(:,2);
Speed1= Firstdriversgoing(:,1);

Secondriver = 'a1-driver2-log.csv';
Secondriverswgoing = dlmread(Secondriver,',',1,0);
Distance2 = Secondriverswgoing(:,2);
Speed2= Secondriverswgoing(:,1);

subplot(2,2,[2,3]);
plot (Speed1,Distance1,Speed2, Distance2)



