%We use dlmread to read the file we want.
%That file automaticaly will be saved in a matrix.
%The last '1' and the '0' refers to the number of columns and rows that it
%should skip so as to keep working.
heighta1=dlmread('a1-height.csv',',',1,0);
heightn1=dlmread('n1-height.csv',',',1,0);

%1.1 (Exercise)

%From those matrices we know were are the elevations,distances, longitudes
%and latitudes that we will be using afterwards.
%So we save them in diferent vectors so we can differece them.
%ROUTE (A1)
elevationa1=heighta1(:,3);
distancea1=heighta1(:,4);
longitudea1=heighta1(:,2);
latitudea1=heighta1(:,1);
%ROUTE (N1)
elevationn1=heightn1(:,3);
distancen1=heightn1(:,4);
longituden1=heightn1(:,2);
latituden1=heightn1(:,1);
%As we previously said we will be using the diferent vectors to plot them in
%diferent charts.
%PLOT
subplot(1,2,1) %We use this to plot 2 different charts in one picture.
plot(distancea1,elevationa1,distancen1,elevationn1)
xlabel('distance(km)')    %We use this to give x axis a name.
ylabel('elevation(m)')    %We use this to give y axis a name.
title('elevations')       %We use this to give the chart a name.
legend('A1','N1')         %We use this to give name to the different plots.
subplot(1,2,2)
plot(longitudea1,latitudea1,longituden1,latituden1)
xlabel('longitude')
ylabel('latitude')
title('route')
legend('A1','N1')
%SAVE
saveas(gcf,'route-elevations.png')
%We use this to save what we have plotted as a (.png) picture. 

%1.2 (Exercise)

%ROUTE (N1)
Meann1=mean(elevationn1);
%With this function we can calculate the average number, taking into account
%that the matrix is a "vector" it will return us a single number.
SdDeviationn1=std(elevationn1);
%With this function we can calculate the standard deviation of a matrix, taking
%into account that this one is "vector" it will return us a single number. 
Maxn1=max(elevationn1);
%With this we can calculate the maximum value of the vector.
Minn1=min(elevationn1);
%With this we can calculate the minimum value of the vector.
fprintf('n1 route statistics:\nMean height:%02f(sd:%02f)\nHeight range: [%02f,%02f]\n\n',Meann1,SdDeviationn1,Minn1,Maxn1);
%This function is used to choose the format of the result we have scored, 
%otherways it will return us a nonsense numbers.
%ROUTE (A1)
Meana1=mean(elevationa1);
SdDeviationa1=std(elevationa1);
Maxa1=max(elevationa1);
Mina1=min(elevationa1);
fprintf('a1 route statistics:\nMean height:%02f(sd:%02f)\nHeight range: [%02f,%02f]\n',Meana1,SdDeviationa1,Mina1,Maxa1);

