leters={'a1','n1'}; 
%This for is used to calculate all the different values we need by changing
%the files we get the information from with each loop.
for x=[1,2]
    %This part of the script creates the names of the files to load then
    %and extract their information.
    filename=sprintf('%s-height.csv',leters{x});
    height=dlmread(filename,',',1,0);
    Latitude=height(:,1);
    Longitude=height(:,2);
    Elevation=height(:,3);
    Distance=height(:,4);
    %Here we calculate the max, min, average, and standard deviation of the
    %elevation to print it afterwards.
    average = mean(Elevation);
    sd = std(Elevation);
    minx = min(Elevation);
    maxx = max(Elevation);
    fprintf('%s route statistics:\n',leters{x}); 
    fprintf('Mean height: %.2f (sd: %.2f)\n', average, sd);
    fprintf('Height range: [%.2f, %.2f]', minx, maxx);
    %In the following paragraph we plot both the distance with the
    %elevation and the longitude with the latitude in two subplots.
   subplot(1,2,1)
   title ('Distance and height')
   re=plot(Distance, Elevation);
   xlabel('Distance(km)');
   ylabel('Height(m)');
   legend('Driver 1','Driver 2');
   
   hold on
   subplot(1,2,2)
   title ('Longitude latitude')
   plot(Longitude, Latitude);
   xlabel('Longitude');
   ylabel('Latitude');
   legend('Driver 1','Driver 2');
   hold on
   %We use the 'hold on' so that the plots calculated each loop don't get
   %over written and stay in the same subplot.
end

hold off
saveas(re,'F:\INFOR\routeelevations.png');
%%we use this to save the image we get when we plot

