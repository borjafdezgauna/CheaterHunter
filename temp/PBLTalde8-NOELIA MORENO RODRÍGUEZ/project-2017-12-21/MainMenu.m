clc
fprintf('###MENU###\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n');
Zenbakia=input('Choose an option:');
while Zenbakia~=6
    if Zenbakia==1
        ATAZA1;
    elseif Zenbakia==2
        ATAZA2;
    elseif Zenbakia==3
        ATAZA4;
    elseif Zenbakia>6
        fprintf('Aukera ezegokia: 1 eta 6 artean egon behar da');        
    end
clc;
fprintf('###MENU###\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n')
Zenbakia=input('Choose an option:');
end

