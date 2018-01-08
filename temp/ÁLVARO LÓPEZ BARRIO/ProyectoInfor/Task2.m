%We write a script that analyzes the logs for each driver on each route
clc
clear
for road=['n' 'a']
    for driver = 1:2
        filename=sprintf('%s1-driver%d-log.csv',road, driver);
        driver_kmh=dlmread(filename,','); %Load files
        Distance=driver_kmh(:,1);%Define Distance 1 as a 1 column matrix
        Speed=driver_kmh(:,2);%Define Speed 1 as a 1 column matrix
        mean_speed=mean(Speed);%Calculate the mean
        std_speed=std(Speed);%Calculate the standar derivation 
        min_speed=min(Speed);%Calulate the min value
        max_speed=max(Speed);%Calulate the max value
        fprintf('driver%d statistics in route %s1\nMean speed: %0.2f (sd. %0.2f)\nMin-Max speed: [%0.2f,%0.2f]\n\n',driver,road,mean_speed,std_speed,min_speed,max_speed);
        %We create the subplot
        if road=='n'
        subplot(1,2,1);
        hold on;%We use hold on to keep the previous plots
        plot(Distance,Speed);
        title('Drivers in n1');
        xlabel('distance(km)');
        ylabel('speed(km/h)');
        legend('Driver1','Driver2');  
        else
        subplot(1,2,2);
        hold on;
        plot(Distance,Speed);
        title('Drivers in a1');
        xlabel('distance(km)');
        ylabel('speed(km/h)');
        legend('Driver1','Driver2');        
        end
    end
end

