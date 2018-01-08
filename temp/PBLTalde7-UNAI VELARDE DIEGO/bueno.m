id=1;
for file={'a1','n1'}
        subplot(1,2,id)
        if id==1
             title('Distantzia-Km/h-n1')
        else
            title('Distantzia-Km/h-a1')
        end
for i= 1:2
    filename= sprintf ('%s-driver%d-log.csv',file{1}, i);
    data=dlmread(filename,',');
    hold on
      plot(data(:,1),data(:,2))
    xlabel ('Distantzia(m)')
    ylabel('abiadura(Km/h)')
    fprintf ('%s-driver%d-log.csv',file{1}, i);
  elebazioaren_media=mean(data(:,1))
maximoa= max(data(:,1))
minimoa= min(data(:,1))
end 
id=id+1;
end
