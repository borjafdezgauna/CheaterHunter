clc %This will erase anything we have done before.
fprintf('####### MENU ########:\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n')
%This will show the menu from which someone will have to choose an option.
OPTION=input('Choose an option:');
%This will let him/her know that he/she has to choose one option of the menu.
%Afterwards we will do a nestedIF for the action it will take for each options 
%of the menu.
if isinteger(OPTION) && OPTION>=1 && OPTION<=6 
  %This will check if the number is integer and if it is bigger or equal to one
  %and lower or equal to six.
    elseif OPTION==1 %if the '1' is chosen TASK1 will be processed.
        clc
        TASK1
        input('Press any key to continue','s'); %after been prcessed taping any
        %letter it will automatically return to TASK3.
        TASK3
    elseif OPTION==2 %if the '2' is chosen TASK2 will be processed.
        clc
        TASK2
        input('Press any key to continue','s');
        TASK3
    elseif OPTION==3  %if the '3' is chosen TASK4 will be processed.
        clc
        TASK4
        input('Press any key to continue','s');
        TASK3
    elseif OPTION==4 %if the '4' is chosen TASK5 will be processed.
        clc
        TASK5
        input('Press any key to continue','s');
        TASK3
    elseif OPTION==5 %if the '5' is chosen TASK6 will be processed.
        clc
        TASK6
        input('Press any key to continue','s');
        TASK3
    elseif OPTION==6 %if the '6' it will leave the TASK3.
        clc
else
    fprintf('Incorrect option: it must be  between 1 and 6') 
    %If he/she did not choose any of the options correctly this mesage will be 
    %shown.
end
    