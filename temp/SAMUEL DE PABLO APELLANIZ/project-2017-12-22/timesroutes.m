
    a1driver1=dlmread('project-files/a1-driver1-log.csv',',');
    a1driver2=dlmread('project-files/a1-driver2-log.csv',',');
    n1driver1=dlmread('project-files/n1-driver1-log.csv',',');
    n1driver2=dlmread('project-files/n1-driver2-log.csv',',');

a= estimateTime(a1driver1(:,1),a1driver1(:,2),10000);
b= estimateTime(a1driver2(:,1),a1driver2(:,2),10000);
c= estimateTime(n1driver1(:,1),n1driver1(:,2),10000);
d= estimateTime(n1driver2(:,1),n1driver2(:,2),10000);
   a1driv1t= toHMS(a)
   a1driv2t= toHMS(b)
   n1driv1t= toHMS(c)
   n1driv2t= toHMS(d)
   sprintf('Estimated time for driver1 in route n1: %s\n Estimated time for driver2 in route n1: %s\n Estimated time for driver1 in route a1: %s\n Estimated time for driver2 in route a1: %s\n',  n1driv1t,  n1driv2t,  a1driv1t,  a1driv2t)
