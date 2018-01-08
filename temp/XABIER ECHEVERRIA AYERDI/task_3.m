clear
fprintf('####### MENU ########: \n 1. Show route plots/statistics \n 2. Show driver plots/statistics \n 3. Time calculations for each driver/route \n 4. Check speed limits \n 5. Fuel consumption calculations for each driver/route \n 6. Exit \n ')
input_number= input('Choose an option ');
while input_number~=6
    
    switch input_number
        
        case 1
            task_1   
        case 2
            task_2
            
        case 3
            task_4
        case 4
            
            task_5
        case 5
            task_6
        case 6
            
        otherwise 
            disp('Number must be between 0-6')
            
    end
     a=input('Press any key to continue');
    fprintf('####### MENU ########: \n 1. Show route plots/statistics \n 2. Show driver plots/statistics \n 3. Time calculations for each driver/route \n 4. Check speed limits \n 5. Fuel consumption calculations for each driver/route \n 6. Exit \n ')
    input_number= input('Choose an option  ');
end
