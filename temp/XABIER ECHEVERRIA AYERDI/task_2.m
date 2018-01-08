clear
p=1; %it defines the postion of the subplot

for road={'n1','a1'}
   for i=1:2
   driver_name=sprintf('%s-driver%d-log.csv',road{1},i);
   driver_data=dlmread(driver_name,',');
   if p==1 || p==2
       subplot(1,2,1)
       plot(driver_data(:,1),driver_data(:,2))
       title(road)
       xlabel('Distance(Km)')
       ylabel('Speed(Km/h) ')
       legend('Driver1','Driver2')
   else
       subplot(1,2,2)
       plot(driver_data(:,1),driver_data(:,2))
       title(road)
       xlabel('Distance(Km)')
       ylabel('Speed(Km/h) ')
       legend('Driver1','Driver2')
   end 
  hold on
  p=p+1;
   
%statistics
   avg=sum(driver_data(:,2))/length(driver_data(:,2));
   standard_deviation = std(driver_data(:,2));
   min_speed=min(driver_data(:,2));
   max_speed=max(driver_data(:,2));
   fprintf('Driver%d statistics in route %s \n Mean speed::%.2f  km/h (sd:%.2f) \n Min-Max speed:[%.2f,%.2f] \n \n', i,road{1},avg,standard_deviation, min_speed,max_speed)
    end
end
