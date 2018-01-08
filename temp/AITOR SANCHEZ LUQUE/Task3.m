disp('######  MENU  ######:');
disp('1. Show route plots/statistics');
disp('2. Show driver plots/statistics');
disp('3. time calculations for each driver/route');
disp('4. Check speed limits');
disp('5. Fuel consumption calculations for each driver/route');
disp('6. Exit');
%This is the menu display
number=0;


while number~= 6
number= input('Choose an option: ');

%Depending on the input given the "if" will execute the script needed.


    if number == 1 

    Task3_1_Plots;

    elseif number== 2

     Task3_2_Plots;
 
    elseif number==3
   
     Task4_6;
    
    elseif number == 4
    
    checkSpeedLimits;
    
    elseif number ==5
       
    Task6;
    
    elseif number ==6;
    
    exit
     
    else %In the case the number isn't between 1 and 6 it will show an error message.
    fprintf('Incorrect option: it must be between 1 and 6 \n')
    
    end 
end



        
        
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          