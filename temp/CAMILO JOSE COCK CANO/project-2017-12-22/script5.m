clc; % Clear console
routes = {'n1', 'a1'}; % String vector containing the route names
drvs = {'driver1', 'driver2'}; % String vector containing the driver names
% Console messages
anamsg = ('Analyzing: Driver= %s, Route= %s\n');
msg = ('Estimated fuel consumption: %f liters of fuel\n\n');

for i = 1:2 % Loop used to iterate using the routes (i is used for the route file name)
   % Build the route stats file name using the route string vectors
   rf = sprintf('project-files/%s-height.csv', routes{i});
   rd = dlmread(rf, ',', 1, 0);
   
   % Calculates the apropiate amount of interpolation slices, by calculating the meters for each route
   % (slc = route distance in meters) it was our idea, we deem it more precise
   slc = fix((toMeters(rd(end, 4)))/50);
   for j = 1:2 % Loop used to iterate using the diver names
      % Build the file name using the route and driver string vectors
      file = sprintf('project-files/%s-%s-log.csv', routes{i}, drvs{j});
      data = dlmread(file, ',');
      % Calculate the total fuel for each route using the created function
      rfuelExp = calculateRouteFuelExpenditure(rd(:, 4)', rd(:, 3)', data(:, 1)', data(:, 2)', slc);
      
      % Print the results
      fprintf(anamsg, drvs{j}, routes{i});
      fprintf(msg, rfuelExp);
   end
end