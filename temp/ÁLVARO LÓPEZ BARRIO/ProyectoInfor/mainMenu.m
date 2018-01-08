%We create a menu to ejecute the different files of the project.
clc
clear
v=[];
option=1;    
    while option~=6        
        %We show the menu.
        fprintf('######MENU######\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n');
        option=input('Choose an option: '); %Choose an option from 1 to 6. If a different number is inserted the result is an error.
        switch option %Ejecutes a different Task depending on the case.
            case 1
                run('Task1.m'); 
            case 2
                run('Task2.m');
            case 3
                run('Task4.m');
            case 4 
                run('Task5.m');
            case 5
                run('Task6.m');         
        end
        if option<1 || option>6 %If the number is not between 1 and 6, it shows this message.
            disp('Incorrect option: it must be between 1 and 6');
        end
        if option~=6 %If the number is different from six, it shows this message. If not the menu closes.
            disp('Press any key to continue...');
            pause
        end
    end
    
