fprintf('####### MENU ########:');
fprintf('\n1. Show route plots/statistics');
fprintf('\n2. Show driver plots/statistics');
fprintf('\n3. Time calculations for each driver/route');
fprintf('\n4. Check speed limits');
fprintf('\n5. Fuel consumption calculations for each driver/route');
fprintf('\n6. Exit');
option = input('\nChoose an option: ');
if option==1
    disp('Press any key to continue');
    pause;
    Task1;
    mainMenu
elseif  option==2
    disp('Press any key to continue');
    pause;
    Task2;
    mainMenu

elseif option==3
    disp('Press any key to continue');
    pause;
    Task4;
    mainMenu
elseif option==4
    disp('Press any key to continue');
    pause;
    disp('Task5');
    mainMenu
elseif option==5
    disp('Press any key to continue');
    pause;
    disp('Task6');
    mainMenu
elseif  option==6
    clc;
else 
    disp('Incorrect option: it must be between 1 and 6');
    mainMenu
end



