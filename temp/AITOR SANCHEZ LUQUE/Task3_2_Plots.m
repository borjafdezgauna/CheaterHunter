leters={'a1','n1'};
drivers={'driver1','driver2'};
%This for is used to calculate all the different values we need by changing
%the files we get the information from with each loop.
for x=[1,2]
    for y=[1,2]
     %This part of the script creates the names of the files to load then
    %and extract their information.       
    filenamedriver=sprintf('%s-%s-log.csv',leters{x},drivers{y});
    distancespeed=dlmread(filenamedriver, ',');
    Distance=distancespeed(:,1);
    speed=distancespeed(:,2);
  
    %Here we calculate the max, min, average, and standard deviation of the
    %elevation to print it afterwards. 
    average = mean(speed);
    sd = std(speed);
    minx = min(speed);
    maxx = max(speed);
    fprintf('%s statistics in route %s:\n',drivers{y}, leters{x}); 
    fprintf('Mean speed: %.2f km/h (sd: %.2f)\n', average, sd);
    fprintf('Min-Max speed: [%.2f, %.2f]\n\n', minx, maxx);
    
     
    %In the following paragraph we plot both the distance with the
    %elevation and the longitude with the latitude in two subplots.
    subplot(1,2,x);
    ds=plot(Distance,speed);
    title(leters(x))
    xlabel('Distance(km)');
    ylabel('Speed(km/h)');
    hold on
    %We use the 'hold on' so that the plots calculated each loop don't get
    %over written and stay in the same subplot. 
    end
    legend('Driver 1','Driver 2');
    hold off
end
