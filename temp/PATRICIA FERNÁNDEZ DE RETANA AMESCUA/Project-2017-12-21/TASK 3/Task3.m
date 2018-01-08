clc 
clear
option=1;
while option~=6 %it would stop when the user want to stop, when he enter 6
 fprintf('\n MENU \n 1-Show route plots/statistics \n 2-Show driver plots/statistics \n 3-Time calculations for each driver/route \n 4-Check speed limits \n 5-Fuel consumption calculations for each driver/route \n 6-Exit \n')
 option=input('choose an option');%it shows the menu and ask for a option
 clc
  if 0>=option || option>6
    fprintf('incorrect option: it must be between 1 and 6 ')
      elseif option == 1
        Task1A
        Task1B
        option=2;
          elseif option == 2
            Task2A
            Task2B
            option=1;
              elseif option == 3
                Task4_6
                option=4;
                  elseif option == 4
                    disp('task 5 is not available')
                      elseif option ==5
                        disp('task 6 is not available') 
  end

end
clc
disp('exit')

