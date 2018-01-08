clc; % Clear console
routes = {'n1', 'a1'}; % String vector containing the route names
drvs = {'driver1', 'driver2'}; % String vector containing the driver names

% Console messages
anamsg = ('Analyzing: Driver= %s, Route= %s\n');
risk0 = ('No risk of infraction\n\n');
risk1 = ('Mild infraction risk: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n');
risk2 = ('HIGH INFRACTION RISK: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n');

for i = 1:2 % Loop used to iterate using the routes (i is used for the route file name)
   % Build the route speed limits file name using the route string vectors
   rf = sprintf('project-files/%s-speed-limit.csv', routes{i});
   rd = dlmread(rf, ';');
   for b = 1:2 % Loop used to iterate using the diver names
      % Build the file name using the route and driver string vectors
      file = sprintf('project-files/%s-%s-log.csv', routes{i}, drvs{b});
      data = dlmread(file, ',');
      
      % Calculates the apropiate amount of interpolation slices, by calculating the meters for each route
      % (slc = route distance in meters) it was our idea, we deem it more precise
      slc = fix((toMeters(data(end, 1)))/50);
      
      % Calculate the distance and percentage over the speed limit
      [dist, percent] = checkSpeedLimits(data(:, 1)', data(:, 2)', rd(:, 1)', rd(:, 2)', slc);
      
      fprintf(anamsg, drvs{b}, routes{i}); % Print the "Analizing data" message
      % Check the infraction risk case used to print the propper message
      % 0%= No risk, <10% = Mild risk and >10%=High risk
      if percent > 0 && percent <= 10
         fprintf(risk1, dist, percent);
      elseif percent == 0
         fprintf(risk0);
      else
         fprintf(risk2, dist, percent);
      end
   end
end