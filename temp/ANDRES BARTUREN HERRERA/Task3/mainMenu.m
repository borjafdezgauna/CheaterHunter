clc	
    op = 0;
 
    while op ~=6 
        
        clc 
        
        disp('OPTIONS MENU');
        disp ( '1. Show route plots/statistics');
        disp ( '2. Show driver plots/statistics')      
        disp ( '3. Time calculations for each driver/route');	
        disp ( '4. Check speed limits');
        disp ( '5. Fuel consumption calculations for each driver/route');
        disp ('6. Exit');
 
        op = input('option: ' );
 
        if op < 1 || op > 6
            disp('Incorrect option: it must be between 1 and 6');
        
        elseif op == 1
            
                 run('otherTasks/Task1/Task1')
            
        elseif op == 2
             
            run('otherTasks/Task2/Task2')
            
        elseif op == 3
                
                run('otherTasks/Task4/Task4')
            
        elseif op == 4
            
                run('otherTasks/Task5/Task5')
            
        elseif op == 5
                
                fprintf('Sorry, we have not done Task6\n')
            
            end
    end
