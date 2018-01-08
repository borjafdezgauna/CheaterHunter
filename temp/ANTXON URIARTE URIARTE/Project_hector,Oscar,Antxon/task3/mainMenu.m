%We show the first time the menu
disp('####### MENU ########:')
disp('1. Show route plots/statistics')
disp('2. Show driver plots/statistics')
disp('3. Time calculations for each driver/route')
disp('4. Check speed limits')
disp('5. Fuel consumption calculations for each driver/route')
disp('6. Exit')
x=input('Choose an option:');

%By using while and if, we make a loop that repites the menu until 6 is pressed
while x>=1 && x~=6
    %we read the previous and later tasks and put inside this to complete the menu
    if x==1
         Task1_a_pathAndProfile
         Task1_b_Statistics
         
        disp('press any key')
        pause
        
        disp('####### MENU ########:')
        disp('1. Show route plots/statistics')
        disp('2. Show driver plots/statistics')
        disp('3. Time calculations for each driver/route')
        disp('4. Check speed limits')
        disp('5. Fuel consumption calculations for each driver/route')
        disp('6. Exit')
        x=input('Choose an option:');
   elseif x==2
       Task2_a_SpeedVariation
       Task2_b_SpeedStatistics
       
        disp('press any key')
        pause
        
        disp('####### MENU ########:')
        disp('1. Show route plots/statistics')
        disp('2. Show driver plots/statistics')
        disp('3. Time calculations for each driver/route')
        disp('4. Check speed limits')
        disp('5. Fuel consumption calculations for each driver/route')
        disp('6. Exit')
        x=input('Choose an option:');
   elseif x==3
        
       Task4_route_drivers
     
        disp('press any key')
        pause
        
        disp('####### MENU ########:')
        disp('1. Show route plots/statistics')
        disp('2. Show driver plots/statistics')
        disp('3. Time calculations for each driver/route')
        disp('4. Check speed limits')
        disp('5. Fuel consumption calculations for each driver/route')
        disp('6. Exit')
        x=input('Choose an option:');
   elseif x==4
       
       Task5_drove_over_speed
       
        disp('press any key')
        pause
        disp('####### MENU ########:')
        disp('1. Show route plots/statistics')
        disp('2. Show driver plots/statistics')
        disp('3. Time calculations for each driver/route')
        disp('4. Check speed limits')
        disp('5. Fuel consumption calculations for each driver/route')
        disp('6. Exit')
        x=input('Choose an option:');
   elseif x==5
        disp('Fuel consumptions for each driver/route')
     % Name of task  Fuel consumption for each driver/route script
        disp('press any key')
        pause

        disp('####### MENU ########:')
        disp('1. Show route plots/statistics')
        disp('2. Show driver plots/statistics')
        disp('3. Time calculations for each driver/route')
        disp('4. Check speed limits')
        disp('5. Fuel consumption calculations for each driver/route')
        disp('6. Exit')
        x=input('Choose an option:');
       
   elseif x>6
    disp('Incorrect option: it must bebetween 1 and 6');

        disp('####### MENU ########:')
        disp('1. Show route plots/statistics')
        disp('2. Show driver plots/statistics')
        disp('3. Time calculations for each driver/route')
        disp('4. Check speed limits')
        disp('5. Fuel consumption calculations for each driver/route')
        disp('6. Exit')
        x=input('Choose an option:');
   end
end
if  x==6 
       disp('EXIT')
end
