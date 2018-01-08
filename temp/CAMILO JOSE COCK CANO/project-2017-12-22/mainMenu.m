clear; % Clear workspace
clc; % Clear console
opt = 0; % Set an initial value to the menu option variable
% Menu console message used for get the user input
menu = ['####### MENU ########:\n', ...
        '1. Show route plots/statistics\n', ...
        '2. Show driver plots/statistics\n', ...
        '3. Time calculations for each driver/route\n', ...
        '4. Check speed limits\n', ...
        '5. Fuel consumption calculations for each driver/route\n', ...
        '6. Exit\nChoose an option: '];
cont = ('\nPress any key to continue'); % Continue message
while opt ~= 6 % Endless while loop used to display the menu, get the user option and terminate the program
   
   % Clear console and prompt the user for an input
   clc;
   opt = input(menu);
   
   if opt > 6 || opt < 1 % Safe used to check if the input is within the menu range
      clc;
      fprintf('\nIncorrect option: it must between 1 and 6.\n')
      input(cont);
   end
   
   switch opt % This switch executes the script desired by the user
      case 1
         script1 % Show route plots/statistics
         input(cont);
      case 2
         script2 % Show driver plots/statistics
         input(cont);
      case 3
         script3 % Time calculations for each driver/route
         input(cont);
      case 4
         script4 % Check speed limits
         input(cont);
      case 5
         script5 % Fuel consumption calculations for each driver/route
         input(cont);
   end
end
clear;
clc;