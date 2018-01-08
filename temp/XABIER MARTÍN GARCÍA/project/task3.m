
%We used this script to create a menu. This menu can be used to search the
%data that appears in each number of the menu. It has an error control and
%shows again whenever a task is finished.

input_Option = 0;

if input_Option == 0
    clc
    fprintf('####### MENU ########: \n 1. Show route plots/statistics \n 2. Show driver plots/statistics \n 3. Time calculations for each driver/route \n 4. Check speed limits \n 5. Fuel consumption calculations for each driver/route \n 6. Exit\n')
    input_Option = input('Choose an option:    ');
    if input_Option <=   6 && input_Option >= 1
        if input_Option == 1    
            task1
        elseif input_Option == 2
            task2
        elseif input_Option == 3
            task4
        elseif input_Option == 4
            task5
        elseif input_Option == 5
            task6
        elseif input_Option == 6
            exit
        end
        
        else
            clc
            fprintf('Incorrect option: it must be between 1 and 6\n')
            fprintf('####### MENU ########: \n 1. Show route plots/statistics \n 2. Show driver plots/statistics \n 3. Time calculations for each driver/route \n 4. Check speed limits \n 5. Fuel consumption calculations for each driver/route \n 6. Exit\n')
            input_Option = input('Choose an option:    '); 
    end
end


