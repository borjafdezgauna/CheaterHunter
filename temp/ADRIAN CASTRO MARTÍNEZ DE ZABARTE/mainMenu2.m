fprintf('####### MENU ########:');
fprintf('\n1. Show route plots/statistics');
fprintf('\n2. Show driver plots/statistics');
fprintf('\n3. Time calculations for each driver/route');
fprintf('\n4. Check speed limits');
fprintf('\n5. Fuel consumption calculations for each driver/route');
fprintf('\n6. Exit');
option = input('\nChoose an option: ');
i=1;
if i==option
    disp('Press any key to continue');
    pause;
    Task1;
else i=i+1;
    if i==option
        disp('Press any key to continue');
        pause;
        Task2;
    else i=i+1;
        if i==option
            disp('Press any key to continue');
            pause;
            disp('Task4');
        else i=i+1;
            if i==option
                disp('Press any key to continue');
                pause;
                disp('Task4');
            else i=i+1;
                if i==option
                    disp('Press any key to continue');
                    pause;
                    disp('Task4');
                else
                    if option<=6 && option>=1
                        if option==6
                        clc;
                        end
                    else
                    disp('Incorrect option: it must be between 1 and 6');
                    mainMenu
                    end
                    
                end
            end
        end
    end
end


                            
    

    
    
    