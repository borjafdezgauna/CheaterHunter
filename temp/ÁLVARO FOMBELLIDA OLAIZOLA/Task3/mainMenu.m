clc	
    op = 0;
 
    while op < 1 || op > 5
              
        disp('MENU DE OPCIONES');
        disp ( '1. Show route plots/statistics');
        disp ( '2. Show driver plots/statistics')      
        disp ( '3. Time calculations for each driver/route');	
        disp ( '4. Check speed limits');
        disp ( '5. Fuel consumption calculations for each driver/route');
        disp ('6. Exit');
 
        op = input('opcion: ' );
 
        if op < 1 || op > 6
            disp('No es una opcion aceptada');
        elseif op == 3
                 
        elseif op == 4
             
            end
    end
