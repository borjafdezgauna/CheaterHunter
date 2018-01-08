 clc
 clear
 for files1={'a1','n1'}%this loop will do two times the same, fisrt time with files1(variable)=a1 and second one with files1=n1
   for files2= 1:2%this loop will do two times the same, fisrt time with files2(variable)=1 and second one with files2=2
    filename=sprintf('%s-driver%d-log.csv', files1{1}, files2(1));%here we would produce the name of the file we want to read
    data=dlmread(filename,',');%here we will load the data from the file
    speed=data(:,2);%it load the 2 colum of the data 
    min1=min(speed);%it calculates the minimun of the informate we have loaded at the previus step
    max1=max(speed);%it calculates the maximun of the informate we have loaded at the previus step
    averagespeed=mean(speed);%it calculates the average of the informate we have loaded at the previus step
    StandardDeviation=std(speed);%it calculates the standardevitation of the informate we have loaded at the previus step
    fprintf('\n driver%d statistics in route %s: \n Mean speed: %.2f(sd:%.2f) \n Min-Max speed: [%.2f , %.2f] \n',files2(1),files1{1}, averagespeed, StandardDeviation, min1, max1)
    %we plot the results
   end
 end
%at the end the 4 file would be read and it would have calculate the mean speed and minimun-maximun speed from the 2 routes and 2 drivers