%Task1: Write a script that analyzes the elevation profiles of both routes
PlotImage=figure(); %We create a empty image window
for road=['n' 'a']  
    filename=sprintf('%s1-height.csv',road);
    road_height=dlmread(filename,',',1,0); %Load n1-height.csv skipping first line 
    
    %Create each variable:
    Latitude=road_height(:,1);
    Longitude=road_height(:,2);
    Elevation=road_height(:,3);
    Distance=road_height(:,4);
   
    %Calculate and display statistics
    Emean=mean(Elevation);
    Estd=std(Elevation);
    Emin=min(Elevation);
    Emax=max(Elevation);
    fprintf('n1 route statistics:\nMean height: %0.2f (sd: %0.2f)\nHeight range: [%0.2f, %0.2f]\n\n',Emean,Estd,Emin,Emax);
    
    %We create the plot
    subplot(1,2,1);
    hold on; %We use hold on to keep the previous plot
    plot(Distance,Elevation);
    title('Road heights'); 
    xlabel('distance(km)');
    ylabel('heights (m)');
    legend('a1','n1');

    subplot(1,2,2);
    hold on; %We use hold on to keep the previous plot
    plot(Longitude,Latitude);
    title('Road routes'); 
    xlabel('Longitude');
    ylabel('Latitude');
    legend('a1','n1');
end
    saveas(PlotImage, 'routeelevations.png'); %We save the subplot in an image file (name: 'routeelevations.png')
    