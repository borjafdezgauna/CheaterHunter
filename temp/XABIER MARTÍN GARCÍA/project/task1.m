all_Data = [];
bulk_Data = [];

%Firstly, we created two empty vectors, to put there the data taken from
%the for.

for heights = {'a1', 'n1'}
        
%We used a 'for' to start a loop. This loop will be launched twice. One for 
%the first road (a1) and the other one for the other one (n1). The first
%part (1), reads the data from the documents that we own in 'data' folder 
%and it is named 'a1/n1-height.csv' depending on what loop we are. The
%second part (2), prints the min/max range and the mean height that both roads
%have. Before the end of the loop, we used twice 'subplot' to plot in the
%same graphic both roads height-distance data and both roads
%latitude-longitude data. The las part (3) just manages the plottin
%position and names all the graphics' parameters.

%1
        bulk_Data = sprintf('Data/%s-height.csv', heights{1});
        all_Data = dlmread(bulk_Data , ',' , 1 , 0);
%2   
        fprintf('Range: %.2d - %.2d\n',min(all_Data(:,3)), max(all_Data(:,3)))
        fprintf('Mean height: %.2d\n', mean(all_Data(:,3)))
%3
        subplot(1,2,1)
            title('A1/N1 Height-Distance');            
            ylabel('Elevation (m)');
            xlabel('Distance from Origin (kms)');  
            plot(all_Data(:,4),all_Data(:,3))
            hold on
        
        subplot(1,2,2)
            title('A1/N1 Latitude-Longitude');
            ylabel('Longitude');
            xlabel('Latitude');       
            plot(all_Data(:,2),all_Data(:,1))
            hold on

end

%We used 'saveas' to save the graphic that we got from the loop in a '.png'
%format image.

saveas(gcf,'route-elevations.png')

%Before the script ends, we used an 'fprintf' to print 'Press any key to
%continue...' and after we used 'pause' to stop the scrip. With this, the
%script will stop until the user uses any key. After using a key, the user
%will be redirected to the main menu (task3). This will be repeated in
%every task to assure we get back to the menu.

fprintf('Press any key to continue...')
pause
run('task3.m')