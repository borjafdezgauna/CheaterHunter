 clc
 clear
 v=[];%empty vector where we will put the data
 w=[];%empty vector where we will put the data
 i=1;%a variable to put the title to each plot
 for files1={'a1','n1'}%this loop will do two times the same, fisrt time with files1(variable)=a1 and second one with files1=n1
   for files2= 1:2%this loop will do two times the same, fisrt time with files2(variable)=1 and second one with files2=2
     filename=sprintf('%s-driver%d-log.csv', files1{1}, files2(1));%here we will produce the name of the file we want to read
     data=dlmread(filename,',');%here we will load the data from the file
     speed=data(:,2);%it loads the 2 colum of the data 
     distanceorigin=data(:,1);%it saves the 1 colum of the data
     v=[v speed];%on the empty vector we have created at the beginning we save the data to not delete the data we have first
     w=[w distanceorigin];%on the empty vector we have create at first we save the data to not delete the data we have first
   end
  subplot(1,2,i);
  plot(w,v);%we plot the data we have loaded
   if i==1 %with this condition we know what title to put to each plot
     title('Subplot A1: Driver 1 vs Driver 2'); 
     legend1 = legend('driverA1','driverA2');
     xlabel  ('distance from origin (km)');
     ylabel  ('speed (km/h)');
   else
    title('Subplot N1: Driver 1 vs Driver 2'); 
    legend2 =legend('driverN1','driverN2');
    xlabel  ('distance from origin (km)');
    ylabel ('speed (km/h)');
   end
  i=i+1;
  v=[];
  w=[];
end
%at the end we will read 4 files and we would plot them at a subplot