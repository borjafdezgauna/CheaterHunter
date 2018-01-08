clc; % Clear console
routes = {'n1', 'a1'}; % String vector containing the route names
drvs = {'driver1', 'driver2'}; % String vector containing the driver names
for i = 1:2 % Loop used to iterate using the routes (i is used for the route file name)
   for j = 1:2 % Loop used to iterate using the diver names
      % Build the file name using the route and driver string vectors
      file = sprintf('project-files/%s-%s-log.csv', routes{i}, drvs{j});
      % Read the file as a matrix inside data
      data = dlmread(file, ',');
      % Calculates the apropiate amount of interpolation slices, by calculating the meters for each route
      % (slc = route distance in meters) it was our idea, we deem it more precise
      slc = fix((toMeters(data(end, 1)))/50);
      rt = toHMS(estimateTime(data(:, 1)', data(:, 2)', slc)); % Calculate time
      % Print the console message for each driver
      fprintf('Estimated time for %s in route %s: %s\n', drvs{j}, routes{i}, rt);
   end
end