%We use a FOR to read and plot the files. One FOR for the ROUTE (A1) and the
%other for ROUTE (N1)
hold off %this will erase any plot we have held before.
for num=1:2
    filename1=sprintf('a1-driver%d-log.csv',num);
    %with sprintf we can specify the file name of 'a1-driver%d-log.csv' first
    %(1) and then on the second round (2) when 'num' changes.
    routea1=dlmread(filename1,','); 
    %with this function we can read the file previously specified, and save it
    %as a matrix.
    distancea1=routea1(:,1);%This way we can take distance in a diferent vector.
    speeda1=routea1(:,2);   %This way we can take speed in a diferent vector.
    %DRIVER(NUM) 
    subplot(1,2,1)              
    plot(distancea1,speeda1)
    xlabel('distance(km)')
    ylabel('speed(km/h)')
    title('routeA1') 
    %With this we are plotting the first chart in which two different functions will be shown, 
    %first one will be called driver1 and is the one that is held, 
    %the second round the plot will be called driver2.
    hold on %this will hold the plot we have just make, so we can have it after.
    Meana1=mean(speeda1);
    SdDeviationa1=std(speeda1);
    Maxa1=max(speeda1);
    Mina1=min(speeda1);
    fprintf('driver%d statistics in route a1:\nMean speed:%02f(sd:%02f)\nMin-Max speed: [%02f,%02f]\n\n',num,Meana1,SdDeviationa1,Mina1,Maxa1);
    
end
legend('driver1','driver2')
%As is said before there are going to be 2 functions in the same chart so we use
%legend to difference them from each other.
for num=1:2
    filename2=sprintf('n1-driver%d-log.csv',num);
    routen1=dlmread(filename2,',');
    distancen1=routen1(:,1);
    speedn1=routen1(:,2);
    subplot(1,2,2)
    %DRIVER(NUM)
    plot(distancen1,speedn1)
    xlabel('distance(km)')
    ylabel('speed(km/h)')
    title('routeN1')
    hold on
    Meann1=mean(speedn1);
    SdDeviationn1=std(speedn1);
    Maxn1=max(speedn1);
    Minn1=min(speedn1);
    fprintf('driver%d statistics in route n1:\nMean speed:%02f(sd:%02f)\nMin-Max speed: [%02f,%02f]\n\n',num,Meann1,SdDeviationn1,Minn1,Maxn1);
end
legend('driver1','driver2')
%The proccess is the same one for each of the FORs changing the letter A for the N. 
