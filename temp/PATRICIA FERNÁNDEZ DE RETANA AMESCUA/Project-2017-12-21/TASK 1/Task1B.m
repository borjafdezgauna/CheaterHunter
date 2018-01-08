clc
clear
 for files = {'a1','n1'} %this loop will do two times the same, first time with files(variable)=a1 and second one with files=n1
   filename= sprintf('%s-height.csv',files{1});%here we would produce the name of the file we want to read
   data=dlmread(filename, ',',1,0);%here we will load the data from the file, and we will quit the first colum becouse it is not useful
   minimun = min(data(:,3));%we only need the 3 colum,then we we calculate the minimun of the data
   maximun = max(data(:,3));%we only need the 3 colum, then we calculate the maximun of the data
   aveheight = mean(data(:,3));%we only need the 3 colum, then we calculate the aveheight of the data
   StandardDeviation = std(data(:,3));%we only need the 3 colum, then we calculate the standardevitation of the data
   i=i+1;%we give another value to the variable because from a1 we want 3 colum but now it is going to start with n1 and from this we want the 4
   fprintf('\n %s Route statistics: \n Mean height: %.2f(sd:%.2f) \n Height range: [%.2f , %.2f] \n',files{1}, aveheight, StandardDeviation, minimun, maximun)
   %we print the results
 end
%at the end the two file would be read and it would have calculate the mean height and height range from the two routes

