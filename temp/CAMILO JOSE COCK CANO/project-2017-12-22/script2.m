clc; % Clear console
clf; % Clear graph data
routes = {'n1', 'a1'}; % String vector containing the route names
drvs = {'driver1', 'driver2'}; % String vector containing the driver names
% Mesagge used for console output
msg = ('\n%s statistics in route %s:\nMean speed: %.2f km/h (sd: %.2f)\nMin-Max speed: [%.2f, %.2f]\n');

for i = 1:2 % Loop used to iterate using the routes (i is used for the route file name)
   for j = 1:2 % Loop used to iterate using the diver names
      % Build the file name using the route and driver string vectors
      file = sprintf('project-files/%s-%s-log.csv', routes{i}, drvs{j});
      % Read the file as a matrix inside data
      data = dlmread(file, ',');
      % Plot the driver data
      subplot(1, 2, i);
      hold on
      plot(data(:, 1), data(:, 2));
      % Drivers statistics get calculated and stored in the rstats vector
      stats = [mean(data(:, 2)), std(data(:, 2)), min(data(:, 2)), max(data(:, 2))];
      % Print console message
      fprintf(msg, drvs{j}, routes{i}, stats(1), stats(2), stats(3), stats(4));
   end
   % Set the plot labels, legends and title (tit)
   tit = sprintf('%s(Speed/Distance)', routes{i});
   subplot(1, 2, i);
   title(tit); xlabel('Distance (km)'); ylabel('Speed (km/h)'); legend('Driver 1', 'Driver 2');
end