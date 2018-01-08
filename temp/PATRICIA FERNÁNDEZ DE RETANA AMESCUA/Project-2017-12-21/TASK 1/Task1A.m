clc
clear
 for files= {'a1','n1'}%this loop will do two times the same, first time with files(variable)=a1 and second one with files=n1
    filename= sprintf('%s-height.csv',files{1});%here we would produce the name of the file we want to read
    data=dlmread(filename, ',',1,0);%here we will load the data from the file, and we will quit the first colum becouse it is not useful
    elevation=data(:,3);%the elevation is at the 3 colum so we read the 3 colum from the data
    distance=data(:,4);%the distance is at the 4 colum so we read the 4 colum from the data
    latitude=data(:,1);%the latitude is at the 1 colum so we read the 1 colum from the data
    longitude=data(:,2);%the longitude is at the 2 colum so we read the 2 colum from the data
    subplot(1,2,1);
    plot(distance,elevation);%we plot the information we have loaded
    hold on %we say to stop until another plot is done
    title('Subplot A1: elevation(m) vs distance(km)')
    xlabel ('distance(km)');
    ylabel ('elevation(m)');
    subplot(1,2,2);
    plot(longitude,latitude);%we plot the information we have loaded
    hold on%we say to stop until another plot is done
    title('Subplot A2: latitude vs longitude')
    xlabel ('longitude');
    ylabel ('latitude');
  end
%at the end we have read 2 files and we have show them on a graphich with a subplot