clc; % Clear console
clf; % Clear graph data
routes = {'n1', 'a1'}; % String vector containing the route names
% Mesagge used for console output
msg = ('\n%s route statistics:\nMean height: %.2f (sd: %.2f)\nHeight range: [%.2f, %.2f]\n');
% Set the title and labels for the plots
subplot(1, 2, 1);
title('Elevation/Distance'); xlabel('Distance (km)'); ylabel('Elevation (m)');
subplot(1, 2, 2);
title('Route'); xlabel('Logitude'); ylabel('Latitude');

for i = 1:2 % Loop used to iterate the process
   % sprintf used to build the file name for each for loop
   filename = sprintf('project-files/%s-height.csv', routes{i});
   % Read the data from the file skipping the first row since it contains headers
   data = dlmread(filename, ',', 1, 0);
   % Draw the plots
   subplot(1, 2, 1);
   hold on
   plot(data(:, 4), data(:, 3));
   legend(routes{i});
   subplot(1, 2, 2);
   hold on
   plot(data(:, 2), data(:, 1));
   legend(routes{i});
   
   % Route statistics get calculated and stored in the rstats vector
   rstats = [mean(data(:, 3)), std(data(:, 3)), min(data(:, 3)), max(data(:, 3))];
   
   % Print console message
   fprintf(msg, routes{i}, rstats(1), rstats(2), rstats(3), rstats(4));
end
subplot(1, 2, 1);
legend('a1', 'n1');
subplot(1, 2, 2);
legend('a1', 'n1');
% Save the plots as a png image
saveas(gcf, 'route-elevations.png');