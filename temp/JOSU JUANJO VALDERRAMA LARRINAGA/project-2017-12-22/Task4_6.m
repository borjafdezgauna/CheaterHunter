
n1Driver1 = dlmread('n1-driver1-log.csv',',');
a1Driver1= dlmread('a1-driver1-log.csv',',');

n1Driver2= dlmread('n1-driver2-log.csv',',');
a1Driver2= dlmread('a1-driver2-log.csv',',');

kms_n1Driver1= n1Driver1 (:,1);
kms_n1Driver2= n1Driver2 (:,1);
kms_a1Driver1= a1Driver1 (:,1);
kms_a1Driver2= a1Driver2 (:,1);

kmH_n1Driver1= n1Driver1 (:,2);
kmH_n1Driver2= n1Driver2 (:,2);
kmH_a1Driver1= a1Driver1 (:,2);
kmH_a1Driver2= a1Driver2 (:,2);

e1=estimateTime (kms_n1Driver1,kmH_n1Driver1,10000);
e2=estimateTime (kms_n1Driver2,kmH_n1Driver2,10000);
e3=estimateTime (kms_a1Driver1,kmH_a1Driver1,10000);
e4=estimateTime (kms_a1Driver2,kmH_a1Driver2,10000);

disp('Estimated time for driver1 in route n1:')
toHMS(e1)

disp('Estimated time for driver2 in route n1:')
toHMS(e2)

disp('Estimated time for driver1 in route a1:')
toHMS(e3)

disp('Estimated time for driver2 in route a1:')
toHMS(e4)






