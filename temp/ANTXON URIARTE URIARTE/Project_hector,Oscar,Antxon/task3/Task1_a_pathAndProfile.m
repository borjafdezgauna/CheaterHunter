%N1 Longitud-Latitud read the files 
n1heights=dlmread('n1-height.csv',',',1,0);
n1longitude= n1heights(:,2);
n1latitude= n1heights(:,1);
%A1 Height-Distance read the files
a1heights= dlmread('a1-height.csv',',',1,0);
a1longitude=a1heights(:,2);
a1latitude= a1heights(:,1);
%Plots of distance-height read the files
subplot(2,2, [1 2])
plot(n1latitude,n1longitude,a1latitude,a1longitude)
xlabel('Latitude')
ylabel('Longitude')
title('Path N1 and A1')
legend('N1','A1')
%N1 Height-Distance read the files
n1heights=dlmread('n1-height.csv',',',1,0);
n1distance= n1heights(:,4);
n1elevation= n1heights(:,3);
%A1 Height-Distance read the files
a1heights= dlmread('a1-height.csv',',',1,0);
a1distance=a1heights(:,4);
a1elevation= a1heights(:,3);
%Plots of distance-height read the files
subplot(2,2, [3 4])
plot(n1distance,n1elevation,a1distance,a1elevation)
xlabel('Distance(km)')
ylabel('Height(m)')
title('profile N1 and A1')
legend('N1', 'A1')


