menu= sprintf('\t ####### MENU ########: \n 1. Erakutsi bideen plotak eta estadistikak \n 2. Erakutsi gidarien plot eta estadistikak \n 3. Denbora kalkulua gidari eta bide bakoitzeko \n 4. Konprobatu habiadura limiteak errepide bakoitzeko \n 5. Erregai kontsumoa gidari eta errepide bakoitzeko \n 6. Irten');
disp(menu)
aukera= input('Aukeratu opzio bat: (Menura bueltatzeko sakatu "space")'); 
while 0<aukera && aukera<7 
    switch aukera
 
     case 1
        Ataza1 
        input('Sakatu enter menura bueltatzeko')
        %%lo del menu
        disp (menu)
         
        
    case 2
        Ataza2
        input('Sakatu enter menura bueltatzeko')
        %%lo del menu
        disp (menu)
         
        
     case 3
        disp('Denbora kalkulua gidari eta bide bakoitzeko')
        %%lo del menu
        input('Sakatu enter menura bueltatzeko')
        disp (menu)
         
         
     case 4
        disp('Konprobatu abiadura limiteak errepide bakoitzeko')
        %%lo del menu
        input('Sakatu enter menura bueltatzeko')
        disp (menu)
        
         
    case 5
        disp ('Erregai kontsumoa gidari eta errepide bakoitzeko' )
        %lo del menu
        input('Sakatu enter menura bueltatzeko')
        disp (menu)
         
        
    case 6
        disp (Irten)        
        end
end