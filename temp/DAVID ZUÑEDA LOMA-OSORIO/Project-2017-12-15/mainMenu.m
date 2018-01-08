%TASK 3
%MAIN MENU

fprintf('\n\n####### MENU ########:');
fprintf('\n1. Show route plots/statistics');
fprintf('\n2. Show driver plots/statistics');
fprintf('\n3. Time calculations for each driver/route');
fprintf('\n4. Check speed limits');
fprintf('\n5. Fuel consumption calculations for each driver/route');
fprintf('\n6. Exit');

option=input('\nChoose an option:')


while option~=6
    
     if option==1
          task1
          fprintf('\n\nPress any key to continue')
          pause;
         
             fprintf('\n\n####### MENU ########:');
             fprintf('\n1. Show route plots/statistics');
             fprintf('\n2. Show driver plots/statistics');
             fprintf('\n3. Time calculations for each driver/route');
             fprintf('\n4. Check speed limits');
             fprintf('\n5. Fuel consumption calculations for each driver/route');
             fprintf('\n6. Exit');

         
         option=input('\nChoose an option:')
    
    
     elseif option==2
          task2
          fprintf('\n\nPress any key to continue')
          pause;
          
             fprintf('\n\n####### MENU ########:');
             fprintf('\n1. Show route plots/statistics');
             fprintf('\n2. Show driver plots/statistics');
             fprintf('\n3. Time calculations for each driver/route');
             fprintf('\n4. Check speed limits');
             fprintf('\n5. Fuel consumption calculations for each driver/route');
             fprintf('\n6. Exit');
         
         option=input('\nChoose an option:')
    
     
     elseif option==3
         %task3
         fprintf('\n\nPress any key to continue')
         pause;
         
             fprintf('\n\n####### MENU ########:');
             fprintf('\n1. Show route plots/statistics');
             fprintf('\n2. Show driver plots/statistics');
             fprintf('\n3. Time calculations for each driver/route');
             fprintf('\n4. Check speed limits');
             fprintf('\n5. Fuel consumption calculations for each driver/route');
             fprintf('\n6. Exit');
         
         
         option=input('\nChoose an option:')
     
     
     elseif option==4
         %task4
         fprintf('\n\nPress any key to continue')
         pause;
         
             fprintf('\n\n####### MENU ########:');
             fprintf('\n1. Show route plots/statistics');
             fprintf('\n2. Show driver plots/statistics');
             fprintf('\n3. Time calculations for each driver/route');
             fprintf('\n4. Check speed limits');
             fprintf('\n5. Fuel consumption calculations for each driver/route');
             fprintf('\n6. Exit');
         
         option=input('\nChoose an option:')
    
     
     elseif option==5
         %task5
         fprintf('\n\nPress any key to continue')
         pause;
         
             fprintf('\n\n####### MENU ########:');
             fprintf('\n1. Show route plots/statistics');
             fprintf('\n2. Show driver plots/statistics');
             fprintf('\n3. Time calculations for each driver/route');
             fprintf('\n4. Check speed limits');
             fprintf('\n5. Fuel consumption calculations for each driver/route');
             fprintf('\n6. Exit');
         
         option=input('\nChoose an option:')
    
     
     else 
         fprintf('Incorrect option: it must be between 1 and 6');
         fprintf('\n\nPress any key to continue')
         pause;
         
             fprintf('\n\n####### MENU ########:');
             fprintf('\n1. Show route plots/statistics');
             fprintf('\n2. Show driver plots/statistics');
             fprintf('\n3. Time calculations for each driver/route');
             fprintf('\n4. Check speed limits');
             fprintf('\n5. Fuel consumption calculations for each driver/route');
             fprintf('\n6. Exit');
         
      
          option=input('\nChoose an option:')
     end 
    
end
 

